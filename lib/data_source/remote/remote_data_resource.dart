import 'package:di_repository_pattern/model/user.dart';

class RemoteDataResource {
  List<User> lstUsers = [
    User(
      id: 1,
      fname: 'Remote Shahrukh',
      age: 60,
    ),
    User(
      id: 2,
      fname: 'Remote Salman',
      age: 55,
    ),
    User(
      id: 3,
      fname: 'Remote Amir',
      age: 56,
    ),
  ];
  bool addUser(User user) {
    print('Adding user to RemoteDataResource: $user');
    lstUsers.add(user);
    return true;
  }

  List<User> getAllUser() {
    return lstUsers;
  }
}
