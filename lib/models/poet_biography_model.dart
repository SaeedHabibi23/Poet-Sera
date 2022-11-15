class PoetBiographyModel {
  late String _poetBiography;
  late String _poetBiographyImage;

  PoetBiographyModel(
      {required String poetBiography, required String poetBiographyImage}) {
    _poetBiography = poetBiography;
    _poetBiographyImage = poetBiographyImage;
  }

  String getPoetBiography() => _poetBiography;

  String getPoetBiographyImage() => _poetBiographyImage;
}
