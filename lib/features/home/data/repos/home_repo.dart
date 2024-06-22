import 'package:bookly_app/core/errors/Faliures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BookModel>>> fetechBestSellerBooks();
  Future<Either<Faliure, List<BookModel>>> fetechFeaturedBooks();
}
