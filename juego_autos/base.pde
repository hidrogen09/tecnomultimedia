//base
boolean arranca() {
  return (estado == 0);
}

boolean totaldemetros() {
  return estado == 1;
 
}
boolean choque() {
  return estado == 2;
}

void inicializar() {
  estado = 0;
  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
}
