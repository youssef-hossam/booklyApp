import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newesed_books_state.dart';

class NewesedBooksCubit extends Cubit<NewesedBooksState> {
  NewesedBooksCubit(this.homeRepo) : super(NewesedBooksInitial());
  final HomeRepo homeRepo;

  fetchNewestBooks() async {
    emit(NewesedBooksLoading());
    var result = await homeRepo.fetechNewestBooks();
    result.fold((failure) {
      emit(NewesedBooksFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(NewesedBooksSuccess(books: books));
    });
  }
}
