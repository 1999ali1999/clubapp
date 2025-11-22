import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/domain/auth/usecases/is_logged_in.dart';
import 'package:movie/presentation/splash/bloc/splash_state.dart';
import 'package:movie/service_locator.dart';

class SplashCubit extends Cubit<SplashState> {

 SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    var isLoggedIn = await sl < IsLoggedInUseCase > ().call();
    if (isLoggedIn) {
      emit(Authenticated());
    } else {
      emit(
        UnAuthenticated()
      );
    }
  }

}