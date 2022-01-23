part of 'screentwo_cubit.dart';

@immutable
abstract class ScreentwoState {}

class ScreentwoInitial extends ScreentwoState {}

class ScreentwoLoading extends ScreentwoState {}

class ScreentwoLoaded extends ScreentwoState {
  final User user;
  ScreentwoLoaded(this.user);
}

class ScreentwoFailed extends ScreentwoState {
  final String errMsg;

  ScreentwoFailed(this.errMsg);

}
