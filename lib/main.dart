import 'package:flutter/material.dart';
import 'app/app.dart';
import 'app/injection/get_it.dart';
import 'app/simple_bloc_delegate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.register();
  await EasyLocalization.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  //DummyDataCheck().fetch();
  runApp(
    EasyLocalization(
      saveLocale: true,
      fallbackLocale: Locale('az', 'AZ'),
      path: 'assets/translations',
      supportedLocales: [
        Locale('en', 'GB'),
        Locale('az', 'AZ'),
        Locale('ru', 'RU'),
      ],
      child: App(),
    ),
  );
}
