import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:frazex_task/presentation/ui/main/bloc/main_cubit.dart';
import 'package:frazex_task/presentation/ui/main/view/main_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: UIColor.black,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: UIColor.black,
          unselectedItemColor: UIColor.lightGray,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: BlocProvider(
        create: (context) => MainCubit(),
        child: MainPage(),
      ),
    );
  }
}
