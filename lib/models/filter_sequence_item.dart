class FilterSequenceItem {
  final String item;

  FilterSequenceItem({required this.item});
}

List<FilterSequenceItem> filterSequenceItems = [
  FilterSequenceItem(item: 'Name(A-Z)'),
  FilterSequenceItem(item: 'Name(Z-A)'),
  FilterSequenceItem(item: 'Price(Low-High)'),
  FilterSequenceItem(item: 'Price(High-Low)'),
];
