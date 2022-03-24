import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/core/http/api_response.dart';
import 'package:allemant_peritos/core/http/http_exceptions.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:allemant_peritos/domain/models/user/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserRepository {
  final HttpMethodsType _helper = HttpMethodsType();

  User? user;

  getUserById(userID) async {
    final users = await _helper.get("usuario/getUserID/$userID");
    print(users);
    if (users is APISuccess) {
      final value = users.value;
      print(value);
      try {
        final _user = User.fromJson(value);

        print("Llego el usuario$_user");

        return _user;
      } catch (e) {
        return AuthenticationState.error(
          error: HttpException.errorWithMessage(e.toString()),
        );
      }
    } else if (users is APIError) {
      return AuthenticationState.error(error: users.exception);
    }
  }

  Future<void> remove() async {
    try {
      const storage = FlutterSecureStorage();
      await storage.delete(key: 'id');
    } on Exception catch (e) {}
  }

  Future<void> saveIdUser(String idUser) async {
    const storage = FlutterSecureStorage();
    try {
      await storage.write(key: 'id', value: idUser);
    } on Exception catch (e) {}
  }

  storageUserId() async {
    String? idValue;
    const storage = FlutterSecureStorage();
    idValue = await storage.read(key: 'id');
    try {
      if (idValue != null) {
        print(idValue);
        return idValue;
      }
    } catch (e) {
      rethrow;
    }
    return idValue;
  }
}

  /* Future<User> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = User(id: "100", fullName: "Carlos"),
    );
  } */

