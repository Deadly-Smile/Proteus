void main () {
  TRISB = 0x00;
  TRISC = 0x00;
  TRISD = 0xff;

  portb = 0x00;
  portc = 0x00;

  portb.f0 = 1;
  portb.f1 = 0;

  PWM1_Init(5000);
  PWM1_Start();
  PWM1_Set_Duty(0);

  while(1) {
    if(portd.f0 == 1) {
      delay_ms(100);
      if(portd.f0 == 1) {
        PWM1_Set_Duty(10);
      }
    }
    if(portd.f1 == 1) {
      delay_ms(100);
      if(portd.f1 == 1) {
        PWM1_Set_Duty(-10);
      }
    }
  }
}