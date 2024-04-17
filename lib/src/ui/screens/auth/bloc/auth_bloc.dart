import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_labb/src/data/repository/auth_repo.dart';

part './auth_event.dart';
part './auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authRepo,
  }) : super(AuthState.unauthenticated()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final AuthenticationRepository authRepo;
}
