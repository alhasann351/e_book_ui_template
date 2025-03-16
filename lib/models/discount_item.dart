class DiscountItem {
  final String title;
  final String subtitle;

  DiscountItem({required this.title, required this.subtitle});
}

List<DiscountItem> discountItems = [
  DiscountItem(title: 'Discount 10%', subtitle: '10% discount on all books'),
  DiscountItem(title: 'Discount 20%', subtitle: '20% discount on all books'),
  DiscountItem(title: 'Discount 30%', subtitle: '30% discount on all books'),
  DiscountItem(title: 'Discount 40%', subtitle: '40% discount on all books'),
  DiscountItem(title: 'Discount 50%', subtitle: '50% discount on all books'),
  DiscountItem(title: 'New user discount', subtitle: 'Only valid for new user'),
  DiscountItem(
    title: 'Weekly discount',
    subtitle: 'Weekly 15% discount on all books',
  ),
  DiscountItem(
    title: 'Monthly discount',
    subtitle: 'Monthly 25% discount on all books',
  ),
  DiscountItem(
    title: 'Flash sell discount',
    subtitle: 'Discount on flash sell',
  ),
  DiscountItem(
    title: 'New book discount',
    subtitle: 'Discount 5% on all new books',
  ),
];
