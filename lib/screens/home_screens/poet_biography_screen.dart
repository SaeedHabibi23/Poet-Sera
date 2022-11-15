import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:poet_sera/constants/lists.dart';

class PoetBiographyScreen extends StatefulWidget {
  const PoetBiographyScreen({Key? key}) : super(key: key);

  static const id = '/poet_biography_screen';

  @override
  State<PoetBiographyScreen> createState() => _PoetBiographyScreenState();
}

class _PoetBiographyScreenState extends State<PoetBiographyScreen> {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Text(
                          'biography'.tr(),
                          style: const TextStyle(fontSize: 40),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(poetsList[_indexPoet]
                              .getPoetBiographyModel()
                              .getPoetBiographyImage()),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      poetsList[_indexPoet]
                          .getPoetBiographyModel()
                          .getPoetBiography(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  )
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
