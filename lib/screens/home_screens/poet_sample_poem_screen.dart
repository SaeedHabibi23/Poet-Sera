import 'package:flutter/material.dart';
import 'package:poet_sera/constants/lists.dart';

class PoetSamplePoemScreen extends StatefulWidget {
  const PoetSamplePoemScreen({Key? key}) : super(key: key);

  static const id = '/poet_sample_poem_screen';

  @override
  State<PoetSamplePoemScreen> createState() => _PoetSamplePoemScreenState();
}

class _PoetSamplePoemScreenState extends State<PoetSamplePoemScreen> {
  dynamic map;
  late int _indexPoet;
  @override
  Widget build(BuildContext context) {
    map = ModalRoute.of(context)!.settings.arguments;
    _indexPoet = map['index_poet'];
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                poetsList[_indexPoet].getPoetName(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: List.generate(
                    poetsList[_indexPoet].getPoetSamplePoem().length, (index) {
                  return poetDetailCardItem(
                      poetsList[_indexPoet]
                          .getPoetSamplePoem()[0]
                          .getSamplePoemTitle(),
                      () {});
                }),
              )
            ],
          ),
        ),
      ),
    ));
  }

  GestureDetector poetDetailCardItem(String text, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                text,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
