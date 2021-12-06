part of filter_actions;

@freezed
class SetHigherThanAmount with _$SetHigherThanAmount implements AppAction {
  const factory SetHigherThanAmount(double limit) = SetHigherThanAmount$;
}
