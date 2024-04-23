import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_labb/src/data/repository/auth_repo.dart';

import '../../../../domain/entity/user_entity.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepo})
      : super(
          authRepo.currentUser == UserModel.empty
              ? AuthState.unauthenticated()
              : AuthState.authenticated(authRepo.currentUser),
        ) {
    // on<AuthEvent>((event, emit) {});

    on<_UserChanged>((event, emit) async {
      await authRepo.logInWithEmailAndPassword(
        email: event.user.email!,
        password: event.user.password!,
      );
      emit(AuthState.authenticated(event.user));
    });

    on<LogoutRequested>((event, emit) async {
      await authRepo.logOut();
      emit(AuthState.unauthenticated());
    });

    // TODO(littlelarge): uncomment
    // _userSubscription = authRepo.user.listen(
    //   (user) => add(_UserChanged(user)),
    // );
  }

  final AuthenticationRepository authRepo;
  late final StreamSubscription<UserModel> _userSubscription;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
