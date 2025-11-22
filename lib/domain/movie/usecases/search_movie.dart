import 'package:dartz/dartz.dart';
import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/domain/movie/repositories/movie.dart';
import 'package:movie/service_locator.dart';

class SearchMovieUseCase extends UseCase<Either,String> {
  
  @override
  Future<Either> call({String ? params}) async {
    return await sl<MovieRepository>().searchMovie(params!);
  }
  
}