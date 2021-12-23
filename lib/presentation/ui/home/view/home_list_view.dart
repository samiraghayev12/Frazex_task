import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:frazex_task/presentation/ui/home/bloc/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeFailure) {
          return Center(child: Text(state.message));
        } else if (state is HomeSuccess) {
          return Expanded(
            child: ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${state.users[index].firstName} ${state.users[index].firstName}"),
                          CircleAvatar(
                            backgroundColor: UIColor.lightGray,
                            backgroundImage: NetworkImage("${state.users[index].picture}"),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
