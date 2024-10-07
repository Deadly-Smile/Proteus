
_main:

;ADVtoVirtualterminal.c,3 :: 		void main () {
;ADVtoVirtualterminal.c,4 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;ADVtoVirtualterminal.c,5 :: 		portc = 0x00;
	CLRF       PORTC+0
;ADVtoVirtualterminal.c,7 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADVtoVirtualterminal.c,8 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADVtoVirtualterminal.c,10 :: 		while(1) {
L_main0:
;ADVtoVirtualterminal.c,11 :: 		value = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;ADVtoVirtualterminal.c,12 :: 		IntToStr(value, x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADVtoVirtualterminal.c,13 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADVtoVirtualterminal.c,14 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADVtoVirtualterminal.c,15 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADVtoVirtualterminal.c,16 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;ADVtoVirtualterminal.c,17 :: 		}
	GOTO       L_main0
;ADVtoVirtualterminal.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
