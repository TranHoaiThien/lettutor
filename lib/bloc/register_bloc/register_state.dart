part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final AccountInfo accountInfo;

  const RegisterSuccess(this.accountInfo);
}

class RegisterFailure extends RegisterState {
  final String? message;

  const RegisterFailure(this.message);
}
