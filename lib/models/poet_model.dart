import 'package:poet_sera/models/poet_biography_model.dart';
import 'package:poet_sera/models/sample_poem_model.dart';

class PoetModel {
  late String _poetName;
  late PoetBiographyModel _poetBiography;
  late List<SamplePoemModel> _poetSamplePoemList;

  PoetModel(
      {required String peotName,
      required PoetBiographyModel poetBiography,
      required List<SamplePoemModel> poetSamplePoemList}) {
    _poetName = peotName;
    _poetBiography = poetBiography;
    _poetSamplePoemList = poetSamplePoemList;
  }

  String getPoetName() => _poetName;

  PoetBiographyModel getPoetBiographyModel() => _poetBiography;

  List<SamplePoemModel> getPoetSamplePoem() => _poetSamplePoemList;
}
