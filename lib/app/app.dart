import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/local_storage_services.dart';
import '../ui/home/home_view.dart';
import '../ui/login/login_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    Presolve(
      classType: SharedPreferenceLocalStorage,
      presolveUsing: SharedPreferences.getInstance,
    )
  ],
)
class AppSetup {
  /* This class serves no other purpose other than having the
   StackedApp annotation attached to it*/
}