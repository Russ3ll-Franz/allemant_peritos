import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._(); // Added constructor

  factory User({
    @Default("") String id,
    @Default("") String full_name,
  }) = _User;

  @override
  String toString() {
    return "User ID = $id, Name = $full_name";
  }

  factory User.empty() => User(id: '', full_name: '');

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
