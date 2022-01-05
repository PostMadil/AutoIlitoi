part of app_containers;

class ClientsContainer extends StatelessWidget {
  const ClientsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Client>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Client>>(
        builder: builder, converter: (Store<AppState> store) => store.state.clients.toList());
  }
}
