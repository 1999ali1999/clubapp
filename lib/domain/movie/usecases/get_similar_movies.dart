import 'package:dartz/dartz.dart';
import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/domain/movie/repositories/movie.dart';
import 'package:movie/service_locator.dart';

class GetSimilarMoviesUseCase extends UseCase<Either,int> {
  
  @override
  Future<Either> call({int ? params}) async {
    return await sl<MovieRepository>().getSimilarMovies(params!);
  }
  
}