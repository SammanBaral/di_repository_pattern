import 'package:di_repository_pattern/di/di.dart';
import 'package:di_repository_pattern/model/user.dart';
import 'package:di_repository_pattern/repository/user_repository.dart';

void main() {
  initModule();
  User user = User(id: 4, fname: 'Samantha Prabhu', age: 30);
  UserRepository userRepository = getIt<UserRepository>();
  userRepository.addUser(user);
  // ignore: avoid_print
  print(userRepository.getAllUser());
}
