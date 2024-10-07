int valADC = 0;
char x[4] = {0};
void main() {
     TRISB = 0x00;
     portb = 0x00;

  UART1_Init(9600);
  ADC_Init();

  while(1) {
    valADC = ADC_Read(3);
    IntToStr(valADC, x);
    UART1_Write_Text("Value : ");
    UART1_Write_Text(x);
    UART1_Write_Text('\n');
    strcpy(x, "");
    portb.f0 = 1;
    delay_ms(1000);
    portb.f0 = 0;
  }
}