class Mundo {
  final int casos;
  final int mortes;
  final int recuperados;
  final int paisesAfetados;
  final DateTime ultimaAtualizacao;

  Mundo({
    this.casos,
    this.mortes,
    this.recuperados,
    this.paisesAfetados,
    this.ultimaAtualizacao,
  });

  factory Mundo.fromJson(Map doc) {
    return Mundo(
        casos: doc['cases'],
        mortes: doc['deaths'],
        recuperados: doc['recovered'],
        paisesAfetados: doc['affectedCountries'],
        ultimaAtualizacao: new DateTime.fromMillisecondsSinceEpoch(doc['update']));
  }
}
