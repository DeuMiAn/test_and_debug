import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:test_and_debug/models/favorites.dart';
import 'package:test_and_debug/screens/favorites.dart';
import 'package:test_and_debug/screens/home.dart';

void main() {
  runApp(const TestingApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
        path: HomePage.routeName,
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
            path: FavoritesPage.routeName,
            builder: (context, state) {
              return const FavoritesPage();
            },
          )
        ]),
  ],
);

class TestingApp extends StatelessWidget {
  const TestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp.router(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
