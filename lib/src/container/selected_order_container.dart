part of app_containers;

class SelectedOrderContainer extends StatelessWidget {
  const SelectedOrderContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Order?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Order?>(
        builder: builder, converter: (Store<AppState> store) => store.state.selectedOrder);
  }
}
