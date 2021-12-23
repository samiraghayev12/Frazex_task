import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Fake1Page extends StatelessWidget {
  const Fake1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "fake_page1".tr(),
      style: TextStyle(fontSize: 25),
    ));
  }
}
