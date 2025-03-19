class DiscountName {
  final String title;
  final String subtitle;

  DiscountName({required this.title, required this.subtitle});
}

List<DiscountName> discountName = [
  DiscountName(title: 'Discount 10%', subtitle: '10% discount on all books'),
  DiscountName(title: 'Discount 20%', subtitle: '20% discount on all books'),
  DiscountName(title: 'Discount 30%', subtitle: '30% discount on all books'),
  DiscountName(title: 'Discount 40%', subtitle: '40% discount on all books'),
  DiscountName(title: 'Discount 50%', subtitle: '50% discount on all books'),
  DiscountName(title: 'New user discount', subtitle: 'Only valid for new user'),
  DiscountName(
    title: 'Weekly discount',
    subtitle: 'Weekly 15% discount on all books',
  ),
  DiscountName(
    title: 'Monthly discount',
    subtitle: 'Monthly 25% discount on all books',
  ),
  DiscountName(
    title: 'Flash sell discount',
    subtitle: 'Discount on flash sell',
  ),
  DiscountName(
    title: 'New book discount',
    subtitle: 'Discount 5% on all new books',
  ),
];
