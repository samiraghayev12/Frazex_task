import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/ui/home/bloc/home_cubit.dart';
import 'package:frazex_task/presentation/ui/home/view/home_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/ui/main/bloc/main_cubit.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeCubit = HomeCubit();

  @override
  void dispose() {
    homeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => homeCubit,
        child: BlocListener<MainCubit, MainState>(
          listener: (context, state) async {
            if (state is SetLang) {
              await context.setLocale(Locale(state.countryCode, state.languageCode));
            }
          },
          child: HomeBody(),
        ),
      ),
    );
  }
}
