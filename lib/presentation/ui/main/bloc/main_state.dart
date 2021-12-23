part of 'main_cubit.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class SetLang extends MainState {
  final String countryCode;
  final String languageCode;

  SetLang({required this.countryCode, required this.languageCode});

  @override
  List<Object> get props => [countryCode, languageCode];
}
