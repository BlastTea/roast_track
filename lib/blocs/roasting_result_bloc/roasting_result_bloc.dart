part of '../blocs.dart';

class RoastingResultBloc extends Bloc<RoastingResultEvent, RoastingResultState> {
  RoastingResultBloc() : super(RoastingResultInitial()) {
    on<SetRoastingResultState>((event, emit) => emit(event.state ?? _roastingResultDataLoaded));

    on<SetRoastingResultToInitial>((event, emit) => emit(RoastingResultInitial()));

    on<InitializeRoastingResultData>((event, emit) {
      _roasting = event.roasting;
      _degrees = event.degrees;
      emit(_roastingResultDataLoaded);
    });

    on<TakePicturePressed>((event, emit) async {
      ChangeImageResult result = await ImageContainer.handleChangeImage(showDelete: false, sheetTitleText: 'Ambil gambar');

      if (result.image == null) return;
    });
  }

  late Roasting _roasting;

  late List<Degree> _degrees;

  RoastingResultDataLoaded get _roastingResultDataLoaded => RoastingResultDataLoaded(
        roasting: _roasting,
        degrees: _degrees,
      );
}
