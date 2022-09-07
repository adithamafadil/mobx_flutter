import 'package:auto_route/auto_route.dart';
import 'package:mobx_flutter/src/presentation/page/form_page/form_page.dart';
import 'package:mobx_flutter/src/presentation/page/home_page/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
    ),
    AutoRoute(
      path: '/form/:id',
      page: FormPage,
    ),
  ],
)
class $MovieRouter {}
