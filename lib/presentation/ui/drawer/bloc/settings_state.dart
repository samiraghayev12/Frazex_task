part of 'settings_cubit.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();
}

class SettingsInitial extends SettingsState {
  @override
  List<Object> get props => [];
}

class  SettingsSuccess extends SettingsState {
  List<SettingsListModel> langs;

  SettingsSuccess(this.langs);

  @override
  List<Object?> get props => [langs];
}
