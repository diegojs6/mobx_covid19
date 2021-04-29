import 'package:mobx_covid19/models/mundo_model.dart';

class Pais extends Mundo {
  String pais;
  int mortesHoje;
  int criticos;
  String urlBandeira;

  Pais({
    this.pais,
    this.criticos,
    this.mortesHoje,
    this.urlBandeira,
    int casos,
    int mortes,
    int recuperados,
  }) : super(
          casos: casos,
          mortes: mortes,
          recuperados: recuperados,
        );

  factory Pais.fromJson(Map doc) {
    return Pais(
      casos: doc['cases'],
      mortes: doc['deaths'],
      recuperados: doc['recovered'],
      mortesHoje: doc['todayDeaths'],
      pais: doc['country'],
      criticos: doc['critical'],
      urlBandeira: doc['countryInfo']['flag'],
    );
  }
}
