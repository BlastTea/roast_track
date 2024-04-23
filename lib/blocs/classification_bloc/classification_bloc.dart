part of '../blocs.dart';

class ClassificationBloc extends Bloc<ClassificationEvent, ClassificationState> {
  ClassificationBloc() : super(ClassificationInitial()) {
    on<SetClassificationState>((event, emit) => emit(event.state ?? _classificationDataLoaded));

    on<SetClassificationToInitial>((event, emit) {
      _classificationResults.clear();

      _currentImageData = null;

      emit(ClassificationInitial());
    });

    on<InitializeClassificationData>((event, emit) {
      _classificationResults.clear();

      _currentImageData = null;

      emit(_classificationDataLoaded);
    });

    on<TakeClassificationPicturePressed>((event, emit) async {
      ChangeImageResult result = await ImageContainer.handleChangeImage(
        showDelete: false,
        sheetTitleText: 'Ambil gambar',
      );

      if (result.image == null) return;

      _currentImageData = await result.image!.readAsBytes();

      showLoadingDialog();

      (List<List<double>>, String)? modelResult;
      try {
        modelResult = await runModel(_currentImageData!);
      } catch (e) {
        NavigationHelper.back();
        showErrorDialog(e.toString());
        return;
      }

      NavigationHelper.back();

      if (modelResult == null) return;

      _classificationResults.add(
        ClassificationResult(
          result: modelResult.$1,
          resultLabel: ResultLabelType.fromString(modelResult.$2),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      await _draggableScrollableController.animateTo(1.0, duration: Durations.medium2, curve: Curves.fastOutSlowIn);

      emit(_classificationDataLoaded);
    });

    on<SaveClassificationPressed>((event, emit) async {
      showLoadingDialog();

      try {
        _classificationResults[event.index] = await ApiHelper.post(
          '/api/v1/classifications',
          body: _classificationResults[event.index].toJson(),
        ).then((value) => ClassificationResult.fromJson(value['data']));
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();

      emit(_classificationDataLoaded);
    });
  }

  final DraggableScrollableController _draggableScrollableController = DraggableScrollableController();

  final List<ClassificationResult> _classificationResults = [];

  Uint8List? _currentImageData;

  ClassificationDataLoaded get _classificationDataLoaded => ClassificationDataLoaded(
        draggableScrollableController: _draggableScrollableController,
        classificationResults: _classificationResults,
        currentImageData: _currentImageData,
      );
}
