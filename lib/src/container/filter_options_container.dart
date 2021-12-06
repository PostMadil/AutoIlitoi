part of app_containers;

class FilterOptionsContainer extends StatelessWidget {
  const FilterOptionsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<FilterOptions> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FilterOptions>(
        builder: builder, converter: (Store<AppState> store) => store.state.filterOptions);
  }
}
