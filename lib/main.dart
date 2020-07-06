import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myroutes/pages/initial_page.dart';
import 'package:myroutes/routes/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      builder: ExtendedNavigator<Router>(router: Router()),
      home: InitialPage(),
    );
  }
}
