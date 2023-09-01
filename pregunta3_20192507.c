# include<stdint.h>
int main(){
    //Crear el puntero al registro MCUCR y colocar el bit 4 en alta:
    volatile uint8_t* MCUCR = (volatile uint8_t*)0x55;
    *MCUCR |= (1<<4);

    //Para el puerto PC2 crear los punteros a los siguientes registros (considerar que son punteros de 8 bits):
    volatile uint8_t* PORTC = (volatile uint8_t*)0x28;
    volatile uint8_t* DDRC = (volatile uint8_t*)0x27;
    volatile uint8_t* PINC = (volatile uint8_t*)0x26;

    //Para el puerto PB5 crear los punteros a los siguientes registros
    volatile uint8_t* PORTB = (volatile uint8_t*)0x25;
    volatile uint8_t* DDRB = (volatile uint8_t*)0x24;

    //Para el puntero que apunta al registro PORTC colocar en 1 el bit 2
    *PORTC |= (1<<2);

    //Para el puntero que apunta al registro DDRC colocar en 0 el bit 2.
    *DDRC &=~(1<<2);

    //Para el puntero que apunta al registro PORTB colocar en 0 el bit 5
    *PORTB &= ~(1<<5);

    //Para el puntero que apunta al registro DDRB colocar en 1 el bit 5
    *DDRB |= (1<<5);

    /*Luego de la primera etapa de configuración crear un bucle en donde se programará la
    aplicación a desarrollar. Dentro del bucle la primera sentencia debe de leer el valor al cual
    apunta el puntero PINC y almacenarlo en una variable de 8 bits, luego establecer una
    sentencia lógica que le permita verificar el valor del bit 2, el cual si se encuentra en alta
    debe colocar el bit 5 del registro al cual apunta PORTB en 1, en caso contrario el bit 5
    debe estar en baja.*/
    while(1){
        // Para que el bit 2 del registro PINC es 1
        uint8_t PINC_VALOR=PINC*;
        if(PINC_VALOR & (1<<2)){
            // colocar en alta el bit 6 de PORTB
            *PORTB |= (1<<6);
        }
        else{
            // colocar en baja el bit 5 de PORTB
            *PORTB &= ~(1<<5);
        }
    }
    return 0;
}
