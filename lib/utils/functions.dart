part of 'utils.dart';

Future<(List<List<double>>, String)?> runModel(Uint8List data) async {
  try {
    img.Image? image = img.decodeImage(data);

    if (image != null) {
      img.Image resizedImage = img.copyResize(image, width: 224, height: 224);

      var imageBytes = resizedImage.getBytes();

      var imageSize = 224 * 224 * 3;
      List inputImage = Float32List(imageSize);
      for (int i = 0; i < imageSize; i++) {
        inputImage[i] = imageBytes[i] / 255.0;
      }

      inputImage = inputImage.reshape([1, 224, 224, 3]);

      List output = List.filled(1 * 4, 0).reshape([1, 4]);

      Interpreter interpreter = await Interpreter.fromAsset('assets/models/coffe_bean_detector.tflite');

      interpreter.run(inputImage, output);

      interpreter.close();

      List<String> labels = ['Dark', 'Green', 'Light', 'Medium'];

      List<double> outputProbabilities = output[0].cast<double>();

      int highestProbIndex = outputProbabilities.indexWhere((prob) => prob == outputProbabilities.reduce(max));

      String predictedLabel = labels[highestProbIndex];

      debugPrint('Output : ${output.toString()}, $predictedLabel');

      return (output.cast<List<double>>(), predictedLabel);
    }
  } catch (e) {
    rethrow;
  }

  return null;
}
