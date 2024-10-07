#line 1 "C:/Users/Administrator/Desktop/Proteus/StepperMotor/StepperMotor.c"
void main () {
 TRISD = 0x00;
 portd = 0x00;

 while(1) {
 portd=0b00000011;
 delay_ms(500);
 portd=0b00000110;
 delay_ms(500);
 portd=0b00001100;
 delay_ms(500);
 portd=0b00001001;
 delay_ms(500);
 }
}
