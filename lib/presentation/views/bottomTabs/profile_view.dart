import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:prueba_jeet/presentation/providers/auth_state.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ProfileViewState createState() => ProfileViewState();
}

class ProfileViewState extends ConsumerState<ProfileView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  context.read<AuthState>().logout();
                  context.go('/login');
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: const Center(
          child: Text('Page Index:'),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
