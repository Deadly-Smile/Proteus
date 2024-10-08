// LCD module connections
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
// End LCD module connections

char x[] = "Temp: ";
int temp = 0;
void main(){
  Lcd_Init();
  ADC_Init();
  
  while(1) {
     temp = ADC_Read(3) * 500 / 1024;
     IntToStr(temp, x);
     Lcd_Cmd(_LCD_CLEAR);
     Lcd_Out(1,1,x);
     delay_ms(500);
  }
}