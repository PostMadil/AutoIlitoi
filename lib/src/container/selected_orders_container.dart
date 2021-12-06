part of app_containers;

class SelectedOrdersContainer extends StatelessWidget {
  const SelectedOrdersContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Order>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Order>>(
        builder: builder, converter: (Store<AppState> store) => store.state.selectedOrders.toList());
  }
}
