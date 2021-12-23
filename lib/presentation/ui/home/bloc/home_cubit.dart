import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frazex_task/app/injection/get_it.dart';
import 'package:frazex_task/data/endpoint/user_endpoint.dart';
import 'package:frazex_task/data/model/user_model.dart';
import 'package:frazex_task/data/repository/user_repository.dart';
import 'package:easy_localization/easy_localization.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  UserRepository userRepository = getIt.get();
  UserEndpoint userEndpoint = UserEndpoint();

  HomeCubit() : super(HomeInitial());

  String value = "";

  search() async {
    emit(HomeInProgress());
    final users = await userRepository.users();
    final filteredNames = users.where((element) => element.firstName.toLowerCase().contains(value.toLowerCase())).toList();
    if(filteredNames.isNotEmpty){
      emit(HomeSuccess(filteredNames));
    }else{
      emit(HomeFailure("information".tr()));
    }
  }
}
