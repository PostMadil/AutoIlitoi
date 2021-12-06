part of app_containers;

class StatisticsContainer extends StatelessWidget {
  const StatisticsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Statistics> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Statistics>(
        builder: builder, converter: (Store<AppState> store) => store.state.statistics);
  }
}
