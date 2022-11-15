import 'package:poet_sera/models/poet_biography_model.dart';
import 'package:poet_sera/models/poet_model.dart';
import 'package:poet_sera/models/sample_poem_model.dart';

List<PoetModel> poetsList = [
  PoetModel(
    peotName: 'فردوسی',
    poetBiography: PoetBiographyModel(
        poetBiography:
            'ابوالقاسم فردوسی طوسی، شاعر حماسه سرای ایرانی و سراینده ی شاهنامه و بزرگترین سراینده ی پارسی گو ایران است که از شهرت جهانی برخوردار است. کنیهٔ وی «ابوالقاسم»، و تخلص و شهرتش «فردوسی» است. در ایران روز 25 اردیبهشت به نام روز بزرگداشت فردوسی نامگذاری شده است.',
        poetBiographyImage: 'assets/poets/ferdawsi.jpg'),
    poetSamplePoemList: [
      SamplePoemModel(
          samplePoemTitle: 'در وصف وطن',
          samplePoemDescription:
              'توانا بود هر که دانا بود\nز دانش دل پیر برنا بود')
    ],
  ),
  PoetModel(
    peotName: 'جامی',
    poetBiography:
        PoetBiographyModel(poetBiography: '', poetBiographyImage: ''),
    poetSamplePoemList: [
      SamplePoemModel(samplePoemTitle: 'در وصف وطن', samplePoemDescription: '')
    ],
  ),
  PoetModel(
    peotName: 'مولانا',
    poetBiography:
        PoetBiographyModel(poetBiography: '', poetBiographyImage: ''),
    poetSamplePoemList: [
      SamplePoemModel(samplePoemTitle: 'در وصف وطن', samplePoemDescription: '')
    ],
  ),
  PoetModel(
    peotName: 'سعدی',
    poetBiography:
        PoetBiographyModel(poetBiography: '', poetBiographyImage: ''),
    poetSamplePoemList: [
      SamplePoemModel(samplePoemTitle: 'در وصف وطن', samplePoemDescription: '')
    ],
  ),
];
