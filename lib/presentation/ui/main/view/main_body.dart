import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/ui/main/bloc/main_cubit.dart';

class MainBody extends StatelessWidget {
  final List<Widget> pages;

  const MainBody({Key? key, required this.pages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainCubit = BlocProvider.of<MainCubit>(context);
    return StreamBuilder<int>(
      stream: mainCubit.indexStream,
      builder: (context, snapshot) {
        final index = snapshot.data ?? 0;
        return pages[index];
      },
    );
  }
}
