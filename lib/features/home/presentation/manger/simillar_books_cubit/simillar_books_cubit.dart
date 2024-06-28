import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part '../simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(
    this.homeRepo,
  ) : super(SimillarBooksInitial());
  final HomeRepo homeRepo;
  fetchSimillarBooks({required String category}) async {
    emit(SimillarBooksLoading());
    var result = await homeRepo.fetechSimillarBooks(category: category);
    result.fold((failure) {
      emit(SimillarBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimillarBooksSuccess(books: books));
    });
  }
}
