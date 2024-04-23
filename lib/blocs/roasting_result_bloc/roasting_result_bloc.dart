part of '../blocs.dart';

class RoastingResultBloc extends Bloc<RoastingResultEvent, RoastingResultState> {
  RoastingResultBloc() : super(RoastingResultInitial()) {
    on<SetRoastingResultState>((event, emit) => emit(event.state ?? _roastingResultDataLoaded));

    on<SetRoastingResultToInitial>((event, emit) {
      _roasting = Roasting();
      _degrees = [];
      _classificationResults.clear();
      emit(RoastingResultInitial());
    });

    on<InitializeRoastingResultData>((event, emit) {
      _roasting = event.roasting;
      _degrees = event.degrees;
      _classificationResults.clear();
      emit(_roastingResultDataLoaded);
    });

    on<SaveRoastingResultPressed>((event, emit) async {
      showLoadingDialog();

      try {
        _roasting = await ApiHelper.post(
          '/api/v1/roastings',
          body: _roasting.copyWith(degrees: _degrees).toJson(),
        ).then((value) => Roasting.fromJson(value['data']));

        _degrees = List.from(_roasting.degrees!);
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }
      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Hasil roasting berhasil disimpan')));

      emit(_roastingResultDataLoaded);
    });

    on<TakeRoastingResultPicturePressed>((event, emit) async {
      ChangeImageResult result = await ImageContainer.handleChangeImage(
        showDelete: false,
        sheetTitleText: 'Ambil gambar',
        allowPickImageFromGallery: false,
      );

      if (result.image == null) return;

      showLoadingDialog();

      (List<List<double>>, String)? modelResult;
      try {
        modelResult = await runModel(await result.image!.readAsBytes());
      } catch (e) {
        NavigationHelper.back();
        showErrorDialog(e.toString());
        return;
      }

      NavigationHelper.back();

      if (modelResult == null) return;

      _classificationResults.add(
        ClassificationRoastingResult(
          roastingId: _roasting.id,
          result: modelResult.$1,
          resultLabel: ResultLabelType.fromString(modelResult.$2),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      await _draggableScrollableController.animateTo(1.0, duration: Durations.medium2, curve: Curves.fastOutSlowIn);

      emit(_roastingResultDataLoaded);
    });

    on<SaveRoastingClassificationResultPressed>((event, emit) async {
      showLoadingDialog();

      try {
        _classificationResults[event.index] = await ApiHelper.post(
          '/api/v1/roasting-classifications',
          body: _classificationResults[event.index].toJson(),
        ).then((value) => ClassificationRoastingResult.fromJson(value['data']));
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();

      emit(_roastingResultDataLoaded);
    });
  }

  final DraggableScrollableController _draggableScrollableController = DraggableScrollableController();

  late Roasting _roasting;

  late List<Degree> _degrees;

  final List<ClassificationRoastingResult> _classificationResults = [];

  RoastingResultDataLoaded get _roastingResultDataLoaded => RoastingResultDataLoaded(
        draggableScrollableController: _draggableScrollableController,
        roasting: _roasting,
        degrees: _degrees,
        classificationResults: _classificationResults,
      );
}
