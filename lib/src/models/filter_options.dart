part of models;

abstract class FilterOptions implements Built<FilterOptions, FilterOptionsBuilder> {
  factory FilterOptions([void Function(FilterOptionsBuilder b) updates]) = _$FilterOptions;

  factory FilterOptions.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as FilterOptions;

  factory FilterOptions.intialStaate() {
    return _$FilterOptions((FilterOptionsBuilder b) {
      b
        ..onlyPaid = false
        ..onlyUnpaid = false
        ..higherThan = false
        ..higherThanAmount = 0
        ..lowerThan = false
        ..lowerThanAmount = double.infinity
        ..searchParam = '';
    });
  }

  FilterOptions._();

  bool get onlyPaid;

  bool get onlyUnpaid;

  bool get higherThan;

  double get higherThanAmount;

  bool get lowerThan;

  double get lowerThanAmount;

  String get searchParam;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<FilterOptions> get serializer => _$filterOptionsSerializer;
}
