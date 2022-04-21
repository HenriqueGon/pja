double alqueireParaMetros(double alqueires, Function acao) {
  return acao(alqueires);
}

double alqueirePaulista(double alqueire) {
  int metros = 24200;

  return alqueire * metros;
}

double alqueireBaiano(double alqueire) {
  int metros = 96800;

  return alqueire * metros;
}

double alqueireMineiro(double alqueire) {
  int metros = 48400;

  return alqueire * metros;
}

void show() {
  print(alqueireParaMetros(5.5, alqueirePaulista));
}
