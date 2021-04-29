import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_covid19/pages/home_controller.dart';
import 'package:mobx_covid19/pages/home_page.dart';
import 'package:mobx_covid19/pages/splash_pages.dart';
import 'package:mobx_covid19/repositories/covidapi_repository.dart';

class AppModule extends Module {
  //classes que deseja Injetar no seu projeto (ex: bloc, dependency)
  @override
  final List<Bind> binds = [
    Bind((i) => CovidApiRepository()), //usando bloc
    Bind((i) => HomeController()), //usando bloc
  ];

  // rotas do módulo
  final List<ModularRoute> route = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashPage()),
    ChildRoute('/home', child: (_, __) => HomePage()),
  ];
}
