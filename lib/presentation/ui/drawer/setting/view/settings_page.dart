import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:frazex_task/presentation/ui/drawer/setting/bloc/settings_cubit.dart';
import 'package:frazex_task/presentation/ui/drawer/setting/view/settings_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:frazex_task/presentation/ui/main/view/main_app_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final settingCubit = SettingsCubit();

  @override
  void dispose() {
    settingCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: BlocBuilder<SettingsCubit, SettingsState>(
          bloc: settingCubit,
          builder: (context, state) {
            return MainAppBar(
              appText: "settings".tr(),
            );
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => settingCubit..configure(),
        child: BlocListener<SettingsCubit, SettingsState>(
          listener: (context, state) async {
            if (state is LanguageChange) {
              await context.setLocale(
                Locale(
                  state.language.languageCode,
                  state.language.countryCode,
                ),
              );
            }
          },
          child: SettingsBody(),
        ),
      ),
    );
  }
}
