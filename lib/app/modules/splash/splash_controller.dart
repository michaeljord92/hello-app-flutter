import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_controller.dart';

part 'splash_controller.g.dart';

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final AppController _appController = Modular.get();

  Future<bool> initApp() async {
    return await _appController.initApp();
  }
}
