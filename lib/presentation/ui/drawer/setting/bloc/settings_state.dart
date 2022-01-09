part of 'settings_cubit.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();
  @override
  List<Object> get props => [];
}
class SettingsInitial extends SettingsState {}
class  SettingsSuccess extends SettingsState {
  List<LanguageModel> languages;

  SettingsSuccess(this.languages);

 @override
  List<Object> get props => [languages];
}

class LanguageChange extends SettingsState {
  final LanguageModel language;

  LanguageChange({required this.language});

  @override
  List<Object> get props => [language];
}

class SettingsInProgress extends SettingsState{}
class SettingsFailure extends SettingsState{
  final String message;

  SettingsFailure(this.message);

  @override
  List<Object> get props => [message];

}

