import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesView extends ConsumerStatefulWidget {
  const FavoritesView({super.key});

  @override
  FavoritesViewState createState() => FavoritesViewState();
}

class FavoritesViewState extends ConsumerState<FavoritesView>
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
      child: Text('Page Index favorites: holaaaaa '),
    ));
  }

  @override
  bool get wantKeepAlive => true;
}
