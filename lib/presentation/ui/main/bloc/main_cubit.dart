import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());


  final _indexController = BehaviorSubject.seeded(0);

  Stream<int> get indexStream => _indexController.stream;

  changePage(int index) => _indexController.sink.add(index);


  changeLang(int index) async {
    if (index == 0) {
      emit(SetLang(countryCode: 'AZ', languageCode: "az"));
    } else if (index == 1) {
      emit(SetLang(countryCode: 'RU', languageCode: "ru"));
      print("rus");
    } else {
      emit(SetLang(countryCode: 'GB', languageCode: "en"));
      print("Eng");
    }
  }



  @override
  Future<void> close() {
    _indexController.close();
    return super.close();
  }
}
