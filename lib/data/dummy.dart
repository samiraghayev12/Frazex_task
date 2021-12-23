import 'package:frazex_task/app/injection/get_it.dart';
import 'package:frazex_task/data/repository/user_repository.dart';

class DummyDataCheck{
UserRepository userRepository = getIt.get();


fetch()async{
final users = await userRepository.users();
print(users);
}

}