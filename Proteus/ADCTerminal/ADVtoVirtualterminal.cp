#line 1 "C:/Users/Administrator/Desktop/Proteus/ADCTerminal/ADVtoVirtualterminal.c"
int value = 0;
char x[4];
void main () {
 TRISC = 0x00;
 portc = 0x00;

 ADC_Init();
 UART1_Init(9600);

 while(1) {
 value = ADC_Read(3);
 IntToStr(value, x);
 UART1_Write_Text(x);
 UART1_Write(13);
 UART1_Write(10);
 delay_ms(500);
 }
}
