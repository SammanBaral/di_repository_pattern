import 'package:di_repository_pattern/di/di.dart';
import 'package:di_repository_pattern/model/user.dart';
import 'package:di_repository_pattern/repository/user_repository.dart';

void main() {
  initModule();
  UserRepository userRepository = getIt<UserRepository>();
  List<User> lstUser = userRepository.getAllUser();
  // ignore: avoid_print
  print(lstUser);
}
