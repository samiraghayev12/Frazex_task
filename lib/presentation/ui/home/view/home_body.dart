import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/ui/home/view/home_list_view.dart';
import 'package:frazex_task/presentation/ui/home/view/home_search.dart';
import 'package:frazex_task/presentation/ui/home/view/home_show_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
          child: HomeSearch(),
        ),
        HomeShowButton(),
        HomeListView()
      ],
    );
  }
}
