import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/ui/drawer/bloc/settings_cubit.dart';
import 'package:frazex_task/presentation/ui/drawer/drawer_body.dart';
import 'package:frazex_task/presentation/ui/main/bloc/main_cubit.dart';
import 'package:easy_localization/easy_localization.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final settingCubit = DrawerCubit();
  final mainCubit = MainCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => settingCubit..init(),
          ),
          BlocProvider(
            create: (context) => mainCubit,
          )
        ],
        child: BlocBuilder<DrawerCubit, SettingsState>(
          builder: (context, state) {
            if (state is SettingsSuccess) {
              return BlocListener<MainCubit, MainState>(
                listener: (context, state) async {
                  if (state is SetLang) {
                    await context.setLocale(Locale(state.languageCode, state.countryCode));
                  }
                },
                child: DrawerBody(langs: state.langs),
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
