import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_list_state.dart';

class FeaturedBooksListCubit extends Cubit<FeaturedBooksListState> {
  FeaturedBooksListCubit() : super(FeaturedBooksListInitial());
}
