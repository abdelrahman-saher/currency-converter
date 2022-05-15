import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/value_object/email.dart';
import '../../core/value_object/password.dart';

class CredentialsEntity extends Equatable {
  final EmailVO? email;
  final PasswordVO? password;
  const CredentialsEntity({
    @required this.email,
    @required this.password,
  });

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
