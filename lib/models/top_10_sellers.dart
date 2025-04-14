class Top10Sellers {
  final int topRankNumber;
  final String bookImagePath;
  final String bookName;
  final String bookWriterName;
  final int bookRatingNumber;
  final double bookPrice;

  Top10Sellers({
    required this.topRankNumber,
    required this.bookImagePath,
    required this.bookName,
    required this.bookWriterName,
    required this.bookRatingNumber,
    required this.bookPrice,
  });
}

List<Top10Sellers> top10Sellers = [
  Top10Sellers(
    topRankNumber: 1,
    bookImagePath: 'assets/images/book_7.png',
    bookName: 'Journey of life',
    bookWriterName: 'Al-hasan',
    bookRatingNumber: 30,
    bookPrice: 2,
  ),
  Top10Sellers(
    topRankNumber: 2,
    bookImagePath: 'assets/images/book_8.png',
    bookName: 'Before rain',
    bookWriterName: 'Ali kabir',
    bookRatingNumber: 20,
    bookPrice: 4,
  ),
  Top10Sellers(
    topRankNumber: 3,
    bookImagePath: 'assets/images/book_9.png',
    bookName: 'Lost love',
    bookWriterName: 'Hasan',
    bookRatingNumber: 10,
    bookPrice: 6,
  ),
  Top10Sellers(
    topRankNumber: 4,
    bookImagePath: 'assets/images/book_10.png',
    bookName: 'The heart',
    bookWriterName: 'Mirza karim',
    bookRatingNumber: 40,
    bookPrice: 10,
  ),
  Top10Sellers(
    topRankNumber: 5,
    bookImagePath: 'assets/images/book_11.png',
    bookName: 'Happiness',
    bookWriterName: 'William',
    bookRatingNumber: 45,
    bookPrice: 5,
  ),
  Top10Sellers(
    topRankNumber: 6,
    bookImagePath: 'assets/images/book_12.png',
    bookName: 'Losing',
    bookWriterName: 'Shakespeare',
    bookRatingNumber: 15,
    bookPrice: 8,
  ),
  Top10Sellers(
    topRankNumber: 7,
    bookImagePath: 'assets/images/book_13.png',
    bookName: 'Myself again',
    bookWriterName: 'Nobita',
    bookRatingNumber: 15,
    bookPrice: 10,
  ),
  Top10Sellers(
    topRankNumber: 8,
    bookImagePath: 'assets/images/book_7.png',
    bookName: 'Journey of life',
    bookWriterName: 'Al-hasan',
    bookRatingNumber: 30,
    bookPrice: 2,
  ),
  Top10Sellers(
    topRankNumber: 9,
    bookImagePath: 'assets/images/book_8.png',
    bookName: 'Before rain',
    bookWriterName: 'Ali kabir',
    bookRatingNumber: 20,
    bookPrice: 4,
  ),
  Top10Sellers(
    topRankNumber: 10,
    bookImagePath: 'assets/images/book_9.png',
    bookName: 'Lost love',
    bookWriterName: 'Hasan',
    bookRatingNumber: 10,
    bookPrice: 6,
  ),
];
