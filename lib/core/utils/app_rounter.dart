import 'package:bookly_app/features/book_details/presentation/views/book_view_detailes.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailesView = '/BookDetailesView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: 'splah',
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailesView,
        builder: (context, state) => const BookDetailesView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
