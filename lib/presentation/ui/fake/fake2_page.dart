import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Fake2Page extends StatelessWidget {
  const Fake2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "fake_page2".tr(),
      style: TextStyle(fontSize: 25),
    ));
  }
}
