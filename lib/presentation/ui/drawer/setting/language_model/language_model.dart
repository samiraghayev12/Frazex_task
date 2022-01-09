import 'package:easy_localization/easy_localization.dart';
enum AvailableLanguage{ az , en , ru }

class LanguageModel {
final AvailableLanguage language;
bool isSelected;

LanguageModel({required this.language, this.isSelected = false});

String get title {
  return languageCode.tr();
}

String get countryCode{
  if(language == AvailableLanguage.en){
   return "GB";
  }else if(language == AvailableLanguage.ru){
    return "RU";
  }
  return "AZ";
  }

  String get languageCode{
   if(language == AvailableLanguage.en){
     return "en";
   }else if(language ==AvailableLanguage.ru){
     return "ru";
   }
   return "az";
  }

}



