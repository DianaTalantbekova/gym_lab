part of 'auth_bloc.dart';

sealed class AuthEvent {
  const AuthEvent();
}

final class LogoutRequested extends AuthEvent {
  const LogoutRequested();
}

final class _UserChanged extends AuthEvent {
  const _UserChanged(this.user);

  final UserModel user;
}
