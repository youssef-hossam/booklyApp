import 'package:bookly_app/core/errors/Faliures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetechNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetechFeaturedBooks();
}
