import 'package:dartz/dartz.dart';
import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/domain/tv/repositories/tv.dart';
import 'package:movie/service_locator.dart';

class GetPopularTVUseCase extends UseCase<Either,dynamic> {
  
  @override
  Future<Either> call({params}) async {
    return await sl<TVRepository>().getPopularTV();
  }
  
}