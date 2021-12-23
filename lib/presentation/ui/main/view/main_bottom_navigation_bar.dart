import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/ui/main/bloc/main_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'main_bottom_navigation_bar_item.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainCubit = BlocProvider.of<MainCubit>(context);
    return StreamBuilder<int>(
      stream: mainCubit.indexStream,
      builder: (context, snapshot) {
        return BottomNavigationBar(
          currentIndex: snapshot.data ?? 0,
          onTap: BlocProvider.of<MainCubit>(context).changePage,
          items: [
            MainBottomNavigationBarItem(label: "home".tr(), imagePath: 'assets/icons/home.png'),
            MainBottomNavigationBarItem(label: "fake1".tr(), imagePath: 'assets/icons/account.png'),
            MainBottomNavigationBarItem(label: "fake2".tr(), imagePath: 'assets/icons/account.png'),
          ],
        );
      },
    );
  }
}
