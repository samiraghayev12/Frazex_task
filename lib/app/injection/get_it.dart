import 'package:frazex_task/data/repository/user_repository.dart';
import 'package:frazex_task/data/service/api.dart';
import 'package:get_it/get_it.dart';



GetIt getIt = GetIt.instance;

class Injection{
 static register(){
   getIt.registerSingleton(ApiService());
   getIt.registerFactory<UserRepository>(() => UserRepositoryImpl(getIt.get()));
 }
}