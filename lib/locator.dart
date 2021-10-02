
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:thinkpeople/core/services/navigation_services.dart';
import 'package:thinkpeople/core/view_models/base_model.dart';

GetIt locator = GetIt();

Future setupLocator() async {
  //shared preference class registered
  // var instance = await LocalStorageService.getInstance();
  // locator.registerSingleton<LocalStorageService>(instance);
  //naviagtion services class registered
  locator.registerLazySingleton(() => NavigationService());

  locator.registerFactory(() => BaseModel());
}

final allProviders = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => BaseModel()),
];
