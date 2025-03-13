class BooksSearchItem {
  final String bookImagePath;
  final String bookName;
  final String bookWriterName;
  final int bookRatingNumber;
  final double bookPrice;

  BooksSearchItem({
    required this.bookImagePath,
    required this.bookName,
    required this.bookWriterName,
    required this.bookRatingNumber,
    required this.bookPrice,
  });
}

List<BooksSearchItem> booksSearchItems = [
  BooksSearchItem(
    bookImagePath: 'assets/images/book_1.jpg',
    bookName: 'Romeo and Juliet',
    bookWriterName: 'William Shakespeare',
    bookRatingNumber: 30,
    bookPrice: 2,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_2.jpg',
    bookName: 'Romeo and Juliet',
    bookWriterName: 'William Shakespeare',
    bookRatingNumber: 20,
    bookPrice: 4,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_3.jpg',
    bookName: 'Romeo and Juliet',
    bookWriterName: 'William Shakespeare',
    bookRatingNumber: 10,
    bookPrice: 6,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_4.jpg',
    bookName: 'Romeo and Juliet',
    bookWriterName: 'William Shakespeare',
    bookRatingNumber: 40,
    bookPrice: 10,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_5.jpg',
    bookName: 'Romeo and Juliet',
    bookWriterName: 'William Shakespeare',
    bookRatingNumber: 45,
    bookPrice: 5,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_6.jpg',
    bookName: 'Romeo and Juliet',
    bookWriterName: 'William Shakespeare',
    bookRatingNumber: 15,
    bookPrice: 3,
  ),
];
