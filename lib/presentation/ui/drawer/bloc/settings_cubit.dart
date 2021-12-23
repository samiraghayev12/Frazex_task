import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frazex_task/presentation/ui/drawer/language_model/language_model.dart';

part 'settings_state.dart';

class DrawerCubit extends Cubit<SettingsState> {
  DrawerCubit() : super(SettingsInitial());

  List<SettingsListModel> get langs => [
        SettingsListModel("Azerbaijani"),
        SettingsListModel("Russian"),
        SettingsListModel("English"),
      ];

  init() {
    emit(SettingsSuccess(langs));
  }
}
