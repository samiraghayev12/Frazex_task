import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
static PreferencesService? _instance;
static SharedPreferences?_preferences;

PreferencesService._internal();

static Future<PreferencesService> get instance async{
  _instance ??= PreferencesService._internal();

  _preferences ??= await SharedPreferences.getInstance();

  return _instance!;
}

final String _appLanguage = "az-az";

persistLanguage(String value) async => await _preferences?.setString(_appLanguage, value);

String get language => _preferences?.getString(_appLanguage) ?? "az-az";

Future<bool?> clear() async => await _preferences?.clear();
}