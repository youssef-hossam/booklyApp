part of 'simillar_books_cubit/simillar_books_cubit.dart';

abstract class SimillarBooksState extends Equatable {
  const SimillarBooksState();

  @override
  List<Object> get props => [];
}

class SimillarBooksInitial extends SimillarBooksState {}

class SimillarBooksLoading extends SimillarBooksState {}

class SimillarBooksSuccess extends SimillarBooksState {
  final List<BookModel> books;

  const SimillarBooksSuccess({required this.books});
}

class SimillarBooksFailure extends SimillarBooksState {
  final String errorMessage;

  const SimillarBooksFailure({required this.errorMessage});
}
