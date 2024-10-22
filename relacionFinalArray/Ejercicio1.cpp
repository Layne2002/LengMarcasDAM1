#include <iostream>
#include <cstring>

#define FIN_CADENA '\0'
#define MAX_CADENA 100
#define ENTER '\n'

using namespace std;

typedef char Cadena[MAX_CADENA];

int longitudCadena(Cadena c) {
    return strlen(c);
}

bool compararCadenas(Cadena c1, Cadena c2) {
    return strcmp(c1, c2) == 0;
}

void copiarCadena(Cadena destino, Cadena origen) {
    strcpy(destino, origen);
}

void leerCadena(Cadena c) {
    cin.getline(c, MAX_CADENA);
}

void imprimirCadena(Cadena c) {
    cout << c << endl;
}

int main() {
    Cadena cadena1;
    Cadena cadena2;

    cout << "Introduce la primera cadena: ";
    leerCadena(cadena1);

    cout << "Introduce la segunda cadena: ";
    leerCadena(cadena2);

    cout << "Longitud de la primera cadena: " << longitudCadena(cadena1) << endl;
    cout << "Las cadenas son " << (compararCadenas(cadena1, cadena2) ? "iguales" : "diferentes") << endl;

    copiarCadena(cadena1, cadena2);
    cout << "Después de copiar, la primera cadena es: ";
    imprimirCadena(cadena1);

    return 0;
}
