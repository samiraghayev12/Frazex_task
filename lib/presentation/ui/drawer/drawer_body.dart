import 'package:flutter/material.dart';
import 'package:frazex_task/app/app.dart';
import 'package:frazex_task/app/simple_bloc_delegate.dart';
import 'package:frazex_task/presentation/ui/main/bloc/main_cubit.dart';
import 'language_model/language_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerBody extends StatelessWidget {
  final List<SettingsListModel> langs;

  const DrawerBody({Key? key, required this.langs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        itemCount: langs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () => BlocProvider.of<MainCubit>(context).changeLang(index),
                  child: Row(children: [
                    Chip(label: Text(langs[index].title)),
                  ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
