part of models;

abstract class Statistics implements Built<Statistics, StatisticsBuilder> {
  factory Statistics([void Function(StatisticsBuilder b) updates]) = _$Statistics;

  factory Statistics.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as Statistics;

  factory Statistics.initialState() {
    return _$Statistics((StatisticsBuilder b) {
      b
        ..total = 0
        ..totalPaid = 0
        ..totalUnpaid = 0
        ..months = <String>[]
        ..ordersPerMonth = <int>[]
        ..moneyPerMonth = <double>[];
    });
  }

  Statistics._();

  double get totalUnpaid;

  double get totalPaid;

  double get total;

  List<String> get months;

  List<int> get ordersPerMonth;

  List<double> get moneyPerMonth;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Statistics> get serializer => _$statisticsSerializer;
}
