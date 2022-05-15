import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/value_object/email.dart';
import '../../core/value_object/name.dart';
import '../../core/value_object/password.dart';

class UserEnitity extends Equatable {
  final NameVO? userName;
  final EmailVO? email;
  final PasswordVO? password;
  const UserEnitity({
    @required this.userName,
    @required this.email,
    @required this.password,
  });

  @override
  List<Object?> get props => [
        userName,
        email,
        password,
      ];
}
