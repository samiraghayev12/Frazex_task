import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/shared/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frazex_task/presentation/ui/drawer/setting/bloc/settings_cubit.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsCubit = BlocProvider.of<SettingsCubit>(context);

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        if (state is SettingsInProgress) {
          return CircularProgressIndicator();
        } else if (state is SettingsSuccess) {
          final languages = state.languages;

          return CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ListTile(
                    onTap: () => settingsCubit.change(languages[index]),
                    title: Text(
                      languages[index].title,
                      style: TextStyle(
                          fontSize: languages[index].isSelected ? 16 : 14,
                          color: languages[index].isSelected ? UIColor.primary : UIColor.black,
                          fontWeight: languages[index].isSelected ? FontWeight.w600 : null),
                    ),
                    dense: true,
                    trailing: languages[index].isSelected ? Icon(Icons.check, color: UIColor.primary) : null,
                  );
                }, childCount: languages.length),
              ),
            ],
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
