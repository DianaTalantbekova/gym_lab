part of './auth_bloc.dart';

enum AuthStatus {
  authenticated,
  unauthenticated,
}

final class AuthState {
  const AuthState._({
    required this.status,
    required this.user,
  });

  const AuthState.authenticated(User user)
      : this._(status: AuthStatus.authenticated, user: user);

  AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated, user: User.empty);

  final AuthStatus status;
  final User user;
}
