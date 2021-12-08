import 'package:flutter/material.dart';
import 'package:groceries_list/modules/home/screens/home.dart';
import 'package:groceries_list/modules/splash/splash_page.dart';
import 'package:groceries_list/shared/auth/auth.dart';
import 'package:groceries_list/shared/core/route_generator.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        onGenerateRoute: RouteGenerator.onGenerateRoute,
        navigatorKey: _navigatorKey,
        home: const SplashPage(),
      ),
    );
  }
}
