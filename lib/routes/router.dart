import 'package:auto_route/auto_route_annotations.dart';

import 'package:myroutes/pages/initial_page.dart';
import 'package:myroutes/pages/second_page.dart';
import 'package:myroutes/pages/third_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: InitialPage, initial: true),
  MaterialRoute(page: SecondPage),
  MaterialRoute(page: ThirdPage),
])
class $Router {}
