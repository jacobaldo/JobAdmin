import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:prueba_jeet/presentation/providers/auth_state.dart';
import 'package:prueba_jeet/presentation/screens/home/home_screen.dart';
import 'package:prueba_jeet/presentation/screens/login/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  redirect: (context, state) {
    final isAuthenticated =
        Provider.of<AuthState>(context, listen: false).isAuthenticated;
    if (isAuthenticated && state.location == '/login') {
      return '/home/0';
    }

    if (!isAuthenticated && state.location != '/login') {
      return '/login';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      redirect: (_, __) => '/login',
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = int.parse(state.params['page'] ?? '0');
        return HomeScreen(pageIndex: pageIndex);
      },
      // routes: [
      //   GoRoute(
      //     path: 'movie/:id',
      //     name: MovieScreen.name,
      //     builder: (context, state) {
      //       final movieId = state.params['id'] ?? 'no-id';
      //       return MovieScreen(movieId: movieId);
      //     },

      //   ),
      // ],
    ),
  ],
);
