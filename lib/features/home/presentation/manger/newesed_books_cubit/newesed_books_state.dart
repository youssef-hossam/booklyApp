part of 'newesed_books_cubit.dart';

abstract class NewesedBooksState extends Equatable {
  const NewesedBooksState();

  @override
  List<Object> get props => [];
}

class NewesedBooksInitial extends NewesedBooksState {}

class NewesedBooksLoading extends NewesedBooksState {}

class NewesedBooksFailure extends NewesedBooksState {
  final String errMessage;

  const NewesedBooksFailure({required this.errMessage});
}

class NewesedBooksSuccess extends NewesedBooksState {
  final List<BookModel> books;

  const NewesedBooksSuccess({required this.books});
}
