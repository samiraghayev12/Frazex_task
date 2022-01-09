import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:frazex_task/presentation/ui/drawer/drawer_body.dart';
import 'package:frazex_task/presentation/ui/drawer/setting/bloc/settings_cubit.dart';
import 'package:frazex_task/presentation/ui/fake/fake1_page.dart';
import 'package:frazex_task/presentation/ui/fake/fake2_page.dart';
import 'package:frazex_task/presentation/ui/home/view/home_page.dart';

import 'main_app_bar.dart';
import 'main_body.dart';
import 'main_bottom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  static List<Widget> _pages = [
    BlocBuilder<SettingsCubit, SettingsState>(
      bloc: SettingsCubit(),
      builder: (context, state) {
        return HomePage();
      },
    ),
    Fake1Page(),
    Fake2Page(),
  ];

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.white,
      appBar: MainAppBar(
        appText: "Frazex Task",
      ),
      body: MainBody(pages: MainPage._pages),
      bottomNavigationBar: MainBottomNavigationBar(),
      drawer: Drawer(
        child: DrawerBody(),
      ),
    );
  }
}
