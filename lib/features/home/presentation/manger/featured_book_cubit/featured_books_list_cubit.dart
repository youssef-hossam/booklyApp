import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_list_state.dart';

class FeaturedBooksListCubit extends Cubit<FeaturedBooksListState> {
  FeaturedBooksListCubit(this.homeRepo) : super(FeaturedBooksListInitial());
  final HomeRepo homeRepo;
  fetchFeatturedBooks() async {
    emit(FeaturedBooksListLoading());
    var result = await homeRepo.fetechFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksListFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksListSuccess(books: books));
    });
  }
}
