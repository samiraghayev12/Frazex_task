import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:frazex_task/presentation/ui/home/bloc/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeShowButton extends StatelessWidget {
  const HomeShowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is HomeInProgress){
          return CircularProgressIndicator();
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 68.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38)),
                primary: UIColor.lightGray,
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
            onPressed: () {
              homeCubit.search();
            },
            child: Text("search_users".tr()),
          ),
        );
      },
    );
  }
}
