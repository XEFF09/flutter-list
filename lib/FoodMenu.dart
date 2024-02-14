class FoodMenu {
  final String foodName;
  final String foodDescription;
  final String foodImage;
  final double foodCost;
  int quantity;

  FoodMenu({
    required this.foodName,
    required this.foodDescription,
    required this.foodImage,
    required this.foodCost,
    this.quantity = 1, // Default quantity to 1
  });
}
