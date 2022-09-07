import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/di/inject.config.dart';

final inject = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async => $initGetIt(inject);
