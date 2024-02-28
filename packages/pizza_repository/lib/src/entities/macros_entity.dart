class MacrosEntity {
  final int calories;
  final int protein;
  final int fat;
  final int carbs;

  MacrosEntity({
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbs,
  });

  Map<String, Object> toDocument() {
    return {
      'calories': calories,
      'protein': protein,
      'fat': fat,
      'carbs': carbs,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
      calories: doc['calories'],
      protein: doc['protein'],
      fat: doc['fat'],
      carbs: doc['carbs'],
    );
  }
}
