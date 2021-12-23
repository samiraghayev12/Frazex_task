import 'package:frazex_task/data/endpoint/user_endpoint.dart';
import 'package:frazex_task/data/model/user_model.dart';
import 'package:frazex_task/data/service/api.dart';

abstract class UserRepository{
  Future<List<User>> users();
}

class UserRepositoryImpl implements UserRepository{
  final ApiService apiService;

  UserRepositoryImpl(this.apiService);


  @override
  Future<List<User>> users() async{
    final response = await apiService.get(UserEndpoint());
    final userModel = UserList.fromJson(response);
    return userModel.data;
  }
  }
