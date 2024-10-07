#line 1 "C:/Users/Administrator/Desktop/Proteus/ServoMotor/ServoMotor.c"
int i =0;
void rotate0() {
 for(i = 0; i < 50; i++) {
 portb.f0 = 1;
 delay_us(800);
 portb.f0 = 0;
 delay_us(19200);
 }
}

void rotate90() {
 for(i = 0; i < 50; i++) {
 portb.f0 = 1;
 delay_us(1500);
 portb.f0 = 0;
 delay_us(18500);
 }
}

void rotate180() {
 for(i = 0; i < 50; i++) {
 portb.f0 = 1;
 delay_us(2200);
 portb.f0 = 0;
 delay_us(17800);
 }
}
void main () {
 TRISB = 0x00;
 portb = 0x00;
 while(1) {
 rotate0();
 rotate90();
 rotate180();
 }
}
