part of 'featured_books_list_cubit.dart';

abstract class FeaturedBooksListState extends Equatable {
  const FeaturedBooksListState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksListInitial extends FeaturedBooksListState {}

class FeaturedBooksListLoading extends FeaturedBooksListState {}

class FeaturedBooksListFailure extends FeaturedBooksListState {
  final String errMessage;

  const FeaturedBooksListFailure({required this.errMessage});
}

class FeaturedBooksListSuccess extends FeaturedBooksListState {
  final List<BookModel> books;

  const FeaturedBooksListSuccess({required this.books});
}
