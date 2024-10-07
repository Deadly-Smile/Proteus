
_main:

;ADCConveter.c,3 :: 		void main() {
;ADCConveter.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;ADCConveter.c,5 :: 		portb = 0x00;
	CLRF       PORTB+0
;ADCConveter.c,7 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADCConveter.c,8 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADCConveter.c,10 :: 		while(1) {
L_main0:
;ADCConveter.c,11 :: 		valADC = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _valADC+0
	MOVF       R0+1, 0
	MOVWF      _valADC+1
;ADCConveter.c,12 :: 		IntToStr(valADC, x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADCConveter.c,13 :: 		UART1_Write_Text("Value : ");
	MOVLW      ?lstr1_ADCConveter+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADCConveter.c,14 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADCConveter.c,15 :: 		UART1_Write_Text('\n');
	MOVLW      10
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADCConveter.c,16 :: 		strcpy(x, "");
	MOVLW      _x+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_ADCConveter+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;ADCConveter.c,17 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;ADCConveter.c,18 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;ADCConveter.c,19 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;ADCConveter.c,20 :: 		}
	GOTO       L_main0
;ADCConveter.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
