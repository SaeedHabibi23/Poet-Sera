import 'package:poet_sera/models/poet_biography_model.dart';

class PoetModel {
  late String _poetName;
  late PoetBiographyModel _poetBiography;
  late List<String> _poetSamplePoem;

  PoetModel(
      {required String peotName,
      required PoetBiographyModel poetBiography,
      required List<String> poetSamplePoem}) {
    _poetName = peotName;
    _poetBiography = poetBiography;
    _poetSamplePoem = poetSamplePoem;
  }

  String getPoetName() => _poetName;

  PoetBiographyModel getPoetBiographyModel() => _poetBiography;

  List<String> getPoetSamplePoem() => _poetSamplePoem;
}
