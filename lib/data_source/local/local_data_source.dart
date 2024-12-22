import 'package:di_repository_pattern/model/user.dart';

class LocalDataSource {
  List<User> lstUsers = [
    User(
      id: 1,
      fname: 'Local Shahrukh',
      age: 60,
    ),
    User(
      id: 2,
      fname: 'Local Salman',
      age: 55,
    ),
  ];
  bool addUser(User user) {
    lstUsers.add(user);
    return true;
  }

  List<User> getAllUser() {
    return lstUsers;
  }
}
