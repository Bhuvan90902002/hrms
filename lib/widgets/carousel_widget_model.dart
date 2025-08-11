class CarouselWidgetModel {
  final String image;
  final String title;
  final String content;

  CarouselWidgetModel(
      {required this.image, required this.title, required this.content});
}

class BottomNavigationItems {
  final String iconImage;
  final String enabledImage;
  final String label;

  BottomNavigationItems(
      {required this.iconImage,
      required this.enabledImage,
      required this.label});
}

class PricingSummaryKeyValue {
  final String keyData;
  final double amount;

  PricingSummaryKeyValue({required this.keyData, required this.amount});
}

class KeyAndValue {
  final String keyName;
  final dynamic value;
  final bool isAmount;
  final bool isStatus;

  KeyAndValue({
    required this.keyName,
    required this.value,
    this.isAmount = false,
    this.isStatus = false,
  });
}
