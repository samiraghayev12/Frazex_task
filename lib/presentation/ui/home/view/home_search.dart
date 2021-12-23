import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/ui/home/bloc/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        BlocProvider.of<HomeCubit>(context).value = value;
      },
      decoration: InputDecoration(
        filled: true,
        labelStyle: TextStyle(
          color: Color(0xff8C8C8C),
        ),
        labelText: "search".tr(),
        border: OutlineInputBorder(
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColor.lightGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: UIColor.lightGray),
        ),
      ),
    );
  }
}
