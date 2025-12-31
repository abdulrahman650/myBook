// part of 'featured_books_cubit.dart';
//
// @immutable
// sealed class FeaturedBooksState {}
//
// final class FeaturedBooksInitial extends FeaturedBooksState {}
// final class FeaturedBooksLoading extends FeaturedBooksState {}
// final class FeaturedBooksFailure extends FeaturedBooksState {
//   final String errMessage;
//   FeaturedBooksFailure(this.errMessage);
//
// }
// final class FeaturedBooksSuccess extends FeaturedBooksState {
//   final List<BookModel> books;
//   FeaturedBooksSuccess(this.books);
// }
// part of 'featured_books_cubit.dart';
//
// @immutable
// sealed class FeaturedBooksState {}
//
// final class FeaturedBooksInitial extends FeaturedBooksState {}
//
// final class FeaturedBooksLoading extends FeaturedBooksState {}
//
// final class FeaturedBooksFailure extends FeaturedBooksState {
//   final String errMessage;
//   FeaturedBooksFailure(this.errMessage);
// }
//
// final class FeaturedBooksSuccess extends FeaturedBooksState {
//   final List<BookModel> books;
//   FeaturedBooksSuccess(this.books);
// }
part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
