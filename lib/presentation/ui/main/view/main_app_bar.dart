import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/shared/colors.dart';

class MainAppBar extends AppBar {
  @override
  Color? get backgroundColor => UIColor.white;

  @override
  bool? get centerTitle => true;

  @override
  Widget? get title {
    return Text(
      "Frazex Task",
      style: TextStyle(fontSize: 20, color: UIColor.black, fontWeight: FontWeight.w700),
    );
  }
}
