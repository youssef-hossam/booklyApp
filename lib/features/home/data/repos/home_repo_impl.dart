import 'package:bookly_app/core/errors/Faliures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomdeRepoImplementation implements HomeRepo {
  final ApiServices apiServices;

  HomdeRepoImplementation({required this.apiServices});
  @override
  Future<Either<Faliure, List<BookModel>>> fetechBestSellerBooks() async {
    try {
      var data = await apiServices.get(
          endpoint: 'volumes?q=programming&orderBy=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      } else {
        return left(ServerFaliure(errorMessage: e.toString()));
      }

      // TODO
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetechFeaturedBooks() {
    // TODO: implement fetechFeaturedBooks
    throw UnimplementedError();
  }
}
