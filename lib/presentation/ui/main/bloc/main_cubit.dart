import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());


  final _indexController = BehaviorSubject.seeded(0);

  Stream<int> get indexStream => _indexController.stream;

  changePage(int index) => _indexController.sink.add(index);


  @override
  Future<void> close() {
    _indexController.close();
    return super.close();
  }
}
