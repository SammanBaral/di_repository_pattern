import 'package:di_repository_pattern/data_source/local/local_data_source.dart';
import 'package:di_repository_pattern/data_source/remote/remote_data_resource.dart';
import 'package:di_repository_pattern/model/user.dart';

class UserRepository {
  final RemoteDataResource remoteDataResource;
  final LocalDataSource localDataSource;
  UserRepository(
      {required this.remoteDataResource, required this.localDataSource});
  bool isNetwork = true;
  bool addUser(User user) {
    if (isNetwork) {
      return remoteDataResource.addUser(user);
    } else {
      return localDataSource.addUser(user);
    }
  }

  List<User> getAllUser() {
    if (isNetwork) {
      return remoteDataResource.getAllUser();
    } else {
      return localDataSource.getAllUser();
    }
  }
}
