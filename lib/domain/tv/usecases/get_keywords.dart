import 'package:dartz/dartz.dart';
import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/domain/tv/repositories/tv.dart';
import 'package:movie/service_locator.dart';

class GetTVKeywordsUseCase extends UseCase<Either,int> {
  
  @override
  Future<Either> call({int ? params}) async {
    return await sl<TVRepository>().getKeywords(params!);
  }
  
}