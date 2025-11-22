
import 'package:get_it/get_it.dart';
import 'package:movie/core/network/dio_client.dart';
import 'package:movie/data/auth/repositories/auth.dart';
import 'package:movie/data/auth/sources/auth_api_service.dart';
import 'package:movie/data/movie/repositories/movie.dart';
import 'package:movie/data/movie/sources/movie.dart';
import 'package:movie/data/tv/repositories/tv.dart';
import 'package:movie/data/tv/sources/tv.dart';
import 'package:movie/domain/auth/repositories/auth.dart';
import 'package:movie/domain/auth/usecases/is_logged_in.dart';
import 'package:movie/domain/auth/usecases/signin.dart';
import 'package:movie/domain/auth/usecases/signup.dart';
import 'package:movie/domain/movie/repositories/movie.dart';
import 'package:movie/domain/movie/usecases/get_movie_trailer.dart';
import 'package:movie/domain/movie/usecases/get_now_playing_movies.dart';
import 'package:movie/domain/movie/usecases/get_recommendation_movies.dart';
import 'package:movie/domain/movie/usecases/get_similar_movies.dart';
import 'package:movie/domain/movie/usecases/get_trending_movies.dart';
import 'package:movie/domain/movie/usecases/search_movie.dart';
import 'package:movie/domain/tv/repositories/tv.dart';
import 'package:movie/domain/tv/usecases/get_keywords.dart';
import 'package:movie/domain/tv/usecases/get_popular_tv.dart';
import 'package:movie/domain/tv/usecases/get_recommendation_tvs.dart';
import 'package:movie/domain/tv/usecases/get_similar_tvs.dart';
import 'package:movie/domain/tv/usecases/search_tv.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  
  sl.registerSingleton<DioClient>(DioClient());
  

  // Services
  sl.registerSingleton<AuthService>(AuthApiServiceImpl());
  sl.registerSingleton<MovieService>(MovieApiServiceImpl());
  sl.registerSingleton<TVService>(TVApiServiceImpl());

  // Repostories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<MovieRepository>(MovieRepositoryImpl());
  sl.registerSingleton<TVRepository>(TVRepositoryImpl());

  // Usecases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetTrendingMoviesUseCase>(GetTrendingMoviesUseCase());
  sl.registerSingleton<GetNowPlayingMoviesUseCase>(GetNowPlayingMoviesUseCase());
  sl.registerSingleton<GetPopularTVUseCase>(GetPopularTVUseCase());
  sl.registerSingleton<GetMovieTrailerUseCase>(GetMovieTrailerUseCase());
  sl.registerSingleton<GetRecommendationMoviesUseCase>(GetRecommendationMoviesUseCase());
  sl.registerSingleton<GetSimilarMoviesUseCase>(GetSimilarMoviesUseCase());
  sl.registerSingleton<GetSimilarTvsUseCase>(GetSimilarTvsUseCase());
  sl.registerSingleton<GetRecommendationTvsUseCase>(GetRecommendationTvsUseCase());
  sl.registerSingleton<GetTVKeywordsUseCase>(GetTVKeywordsUseCase());
  sl.registerSingleton<SearchMovieUseCase>(SearchMovieUseCase());
  sl.registerSingleton<SearchTVUseCase>(SearchTVUseCase());
}