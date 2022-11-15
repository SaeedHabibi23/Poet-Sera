import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:poet_sera/constants/lists.dart';

class PoetDetailScreen extends StatefulWidget {
  const PoetDetailScreen({Key? key}) : super(key: key);

  static const id = '/poet_detail_screen';

  @override
  State<PoetDetailScreen> createState() => _PoetDetailScreenState();
}

class _PoetDetailScreenState extends State<PoetDetailScreen> {
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
                children: [
                  poetDetailCardItem('biography', () {}),
                  poetDetailCardItem('sample_poem', () {}),
                ],
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
                text.tr(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
