import 'package:dartz/dartz.dart';
import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/data/auth/models/signin_req_params.dart';
import 'package:movie/domain/auth/repositories/auth.dart';
import 'package:movie/service_locator.dart';

class SigninUseCase extends UseCase<Either,SigninReqParams> {
  
  @override
  Future<Either> call({SigninReqParams? params}) async {
    return await sl<AuthRepository>().signin(params!);
  }
  
}