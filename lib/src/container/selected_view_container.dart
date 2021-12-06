part of app_containers;

class SelectedViewContainer extends StatelessWidget {
  const SelectedViewContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<int> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
        builder: builder, converter: (Store<AppState> store) => store.state.selectedView);
  }
}
