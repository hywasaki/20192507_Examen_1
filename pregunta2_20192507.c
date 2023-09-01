#include<stdio.h>
#include <stdlib.h>

int main(){
    
    /*algoritmo que analice los divisores de los números del arreglo sean menores que ellos mismos */
    /*si la suma de los divisores de un número es menor al número, se considera un número deficiente*/
    /*si la suma es igual al número se considera un número perfecto*/
    /*si la suma fuera mayor el número es abundante*/
    printf("\n");
    int numeros_aleatorios[15];
    int suma_divisores;
    int divisores;
    
    for (int i = 1; i < 15; i++) {
        numeros_aleatorios[i] = rand() % 100; // numeros aleatorios de 0 a 100 en el array
    }

    printf("El arreglo es: ");
    for (int i = 1; i < 15; i++) {
        printf("%d ", numeros_aleatorios[i]);
    }
    printf("\n\n");
    // Llenamos el array de numeros aleatorios
    for(int i = 1; i < 15; i++){ 
        int j=0;
        suma_divisores=0;
        for (j=1; j<numeros_aleatorios[i];j++){
            if(numeros_aleatorios[i]%j==0){
                suma_divisores += j;
            }
        }


        if (suma_divisores<numeros_aleatorios[i]){
            printf("%d - DEFICIENTE",numeros_aleatorios[i]);
        }
        else if(suma_divisores=numeros_aleatorios[i]){
            printf("%d - PERFECTO",numeros_aleatorios[i]);
        }
        else{
            printf("%d - ABUNDANTE",numeros_aleatorios[i]);
        }
        printf("\n");
    }
	return 0;

}