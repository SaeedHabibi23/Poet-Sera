class SamplePoemModel {
  late String _samplePoemTitle;
  late String _samplePoemDescription;

  SamplePoemModel(
      {required String samplePoemTitle,
      required String samplePoemDescription}) {
    _samplePoemTitle = samplePoemTitle;
    _samplePoemDescription = samplePoemDescription;
  }

  String getSamplePoemTitle() => _samplePoemTitle;

  String getSamplePoemDescription() => _samplePoemDescription;
}
