part of app_actions;

@freezed
class SetSelectedView with _$SetSelectedView implements AppAction {
  const factory SetSelectedView(int selectedView) = SetSelectedView$;
}
