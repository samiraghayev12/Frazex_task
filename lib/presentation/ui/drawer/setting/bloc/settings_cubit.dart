import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frazex_task/data/service/preferences.dart';
import 'package:frazex_task/presentation/ui/drawer/setting/language_model/language_model.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  List<LanguageModel> get _langs => [
       LanguageModel(language: AvailableLanguage.az),
       LanguageModel(language: AvailableLanguage.en),
       LanguageModel(language: AvailableLanguage.ru),

      ];

  configure() async{
  emit(SettingsInProgress());
  final prefs = await PreferencesService.instance;
  List<LanguageModel> items = _langs;
  for(int i=0; i < _langs.length; i++){
    items[i].isSelected = _langs[i].languageCode == prefs.language;
  }
  emit(SettingsSuccess(items));
  }

  change(LanguageModel language) async{
    emit(SettingsInProgress());
    final prefs = await PreferencesService.instance;
    prefs.persistLanguage(language.languageCode);
    emit(LanguageChange(language: language));

    await configure();
  }
}
