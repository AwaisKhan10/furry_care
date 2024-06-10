import 'package:furry_care/core/services/auth_services.dart';
import 'package:furry_care/core/services/data_base_services.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerSingleton(AuthService());
  locator.registerSingleton(DatabaseService());
}
