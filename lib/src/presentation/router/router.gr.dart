// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:mobx_flutter/src/presentation/page/form_page/form_page.dart'
    as _i2;
import 'package:mobx_flutter/src/presentation/page/home_page/home_page.dart'
    as _i1;

class MovieRouter extends _i3.RootStackRouter {
  MovieRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePage.name: (routeData) {
      final args =
          routeData.argsAs<HomePageArgs>(orElse: () => const HomePageArgs());
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.HomePage(key: args.key));
    },
    FormPage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<FormPageArgs>(
          orElse: () => FormPageArgs(id: pathParams.getString('id')));
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.WrappedRoute(
              child: _i2.FormPage(key: args.key, id: args.id)));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomePage.name, path: '/'),
        _i3.RouteConfig(FormPage.name, path: '/form/:id')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePage extends _i3.PageRouteInfo<HomePageArgs> {
  HomePage({_i4.Key? key})
      : super(HomePage.name, path: '/', args: HomePageArgs(key: key));

  static const String name = 'HomePage';
}

class HomePageArgs {
  const HomePageArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomePageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.FormPage]
class FormPage extends _i3.PageRouteInfo<FormPageArgs> {
  FormPage({_i4.Key? key, required String id})
      : super(FormPage.name,
            path: '/form/:id',
            args: FormPageArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'FormPage';
}

class FormPageArgs {
  const FormPageArgs({this.key, required this.id});

  final _i4.Key? key;

  final String id;

  @override
  String toString() {
    return 'FormPageArgs{key: $key, id: $id}';
  }
}
