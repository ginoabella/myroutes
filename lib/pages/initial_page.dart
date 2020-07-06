import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myroutes/routes/router.gr.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Go to SECOND'),
              onPressed: () => navigateToSecond(context),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Go to THIRD'),
              onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecond(BuildContext context) {
    ExtendedNavigator.of(context).pushNamed(Routes.secondPage,
        arguments: SecondPageArguments(userId: 'Test'));
  }

  void navigateToThird(BuildContext context) {
    ExtendedNavigator.of(context).pushNamed(Routes.thirdPage,
        arguments: ThirdPageArguments(userName: 'User', points: 300));
  }
}
