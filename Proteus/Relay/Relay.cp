#line 1 "C:/Users/Administrator/Desktop/Proteus/Relay/Relay.c"
void main () {
 TRISB = 0x00;

 portb = 0x00;
 while(1) {
 portb.f0 = 1;
 delay_ms(1000);
 portb.f0 = 0;
 delay_ms(1000);
 }
}
