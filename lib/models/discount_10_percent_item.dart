class Discount10PercentItem {
  final String bookImagePath;
  final String bookName;
  final String bookWriterName;
  final int bookRatingNumber;
  final double bookPrice;
  final double discountBookPrice;

  Discount10PercentItem({
    required this.bookImagePath,
    required this.bookName,
    required this.bookWriterName,
    required this.bookRatingNumber,
    required this.bookPrice,
    required this.discountBookPrice,
  });
}

List<Discount10PercentItem> discount10PercentItems = [
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_7.png',
    bookName: 'Journey of life',
    bookWriterName: 'Al-hasan',
    bookRatingNumber: 30,
    bookPrice: 2,
    discountBookPrice: 1,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_8.png',
    bookName: 'Before rain',
    bookWriterName: 'Ali kabir',
    bookRatingNumber: 20,
    bookPrice: 4,
    discountBookPrice: 1,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_9.png',
    bookName: 'Lost love',
    bookWriterName: 'Hasan',
    bookRatingNumber: 10,
    bookPrice: 6,
    discountBookPrice: 1.5,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_10.png',
    bookName: 'The heart',
    bookWriterName: 'Mirza karim',
    bookRatingNumber: 40,
    bookPrice: 10,
    discountBookPrice: 1.5,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_11.png',
    bookName: 'Happiness',
    bookWriterName: 'William',
    bookRatingNumber: 45,
    bookPrice: 5,
    discountBookPrice: 1,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_12.png',
    bookName: 'Losing',
    bookWriterName: 'Shakespeare',
    bookRatingNumber: 15,
    bookPrice: 8,
    discountBookPrice: 1.5,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_13.png',
    bookName: 'Myself again',
    bookWriterName: 'Nobita',
    bookRatingNumber: 15,
    bookPrice: 10,
    discountBookPrice: 1.5,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_14.png',
    bookName: 'Self love',
    bookWriterName: 'Ali mia',
    bookRatingNumber: 15,
    bookPrice: 6,
    discountBookPrice: 1,
  ),
  Discount10PercentItem(
    bookImagePath: 'assets/images/book_15.png',
    bookName: 'Beyond reach',
    bookWriterName: 'Najia',
    bookRatingNumber: 15,
    bookPrice: 3,
    discountBookPrice: 1,
  ),
];
