import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/domain/auth/repositories/auth.dart';
import 'package:movie/service_locator.dart';

class IsLoggedInUseCase extends UseCase<bool,dynamic> {
  
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
  
}