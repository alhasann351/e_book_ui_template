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
    bookName: 'Create business',
    bookWriterName: 'Al-hasan',
    bookRatingNumber: 30,
    bookPrice: 2,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_2.jpg',
    bookName: 'Different winter',
    bookWriterName: 'Ali kabir',
    bookRatingNumber: 20,
    bookPrice: 4,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_3.jpg',
    bookName: 'Connected with us',
    bookWriterName: 'Hasan',
    bookRatingNumber: 10,
    bookPrice: 6,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_4.jpg',
    bookName: 'Annual report',
    bookWriterName: 'Mirza karim',
    bookRatingNumber: 40,
    bookPrice: 10,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_5.jpg',
    bookName: 'Design',
    bookWriterName: 'William',
    bookRatingNumber: 45,
    bookPrice: 5,
  ),
  BooksSearchItem(
    bookImagePath: 'assets/images/book_6.jpg',
    bookName: 'Workbook',
    bookWriterName: 'Shakespeare',
    bookRatingNumber: 15,
    bookPrice: 3,
  ),
];
