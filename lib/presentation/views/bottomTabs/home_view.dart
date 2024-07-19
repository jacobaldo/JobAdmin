import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    // final popularMovies = ref.watch(popularMoviesProvider);

    // if (popularMovies.isEmpty) {
    //   return const Center(child: CircularProgressIndicator(strokeWidth: 2));
    // }

    return const Scaffold(
        body: Center(
      child: Text('Page Index:'),
    ));
  }

  @override
  bool get wantKeepAlive => true;
}
