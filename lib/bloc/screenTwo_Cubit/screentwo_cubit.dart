import 'package:bloc/bloc.dart';
import 'package:crewbella_task/network/model/request_status.dart';
import 'package:crewbella_task/network/model/user.dart';
import 'package:crewbella_task/network/network.dart';
import 'package:meta/meta.dart';

part 'screentwo_state.dart';

class ScreentwoCubit extends Cubit<ScreentwoState> {
  final NetworkConnection networkConnection;
  ScreentwoCubit(this.networkConnection) : super(ScreentwoInitial());

  void getUser() {
    emit(ScreentwoLoading());
    try {
      networkConnection.getUserData().then((user) {
        if (RequestStatus.SUCCESS == user.status) {
          emit(ScreentwoLoaded(user.body ?? User()));
        } else {
          emit(ScreentwoFailed(user.message ?? 'Something went wrong'));
        }
      });
    } catch(e) {
      print(e);
      emit(ScreentwoFailed('Something went wrong'));
    }
  }
}
