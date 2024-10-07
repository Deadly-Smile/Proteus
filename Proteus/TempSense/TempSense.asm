
_main:

;TempSense.c,19 :: 		void main(){
;TempSense.c,20 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;TempSense.c,21 :: 		ADC_Init();
	CALL       _ADC_Init+0
;TempSense.c,23 :: 		while(1) {
L_main0:
;TempSense.c,24 :: 		temp = ADC_Read(3) * 500 / 1024;
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      244
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	MOVF       R4+0, 0
L__main4:
	BTFSC      STATUS+0, 2
	GOTO       L__main5
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	ADDLW      255
	GOTO       L__main4
L__main5:
	MOVF       R2+0, 0
	MOVWF      _temp+0
	MOVF       R2+1, 0
	MOVWF      _temp+1
;TempSense.c,25 :: 		IntToStr(temp, x);
	MOVF       R2+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R2+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;TempSense.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;TempSense.c,27 :: 		Lcd_Out(1,1,x);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _x+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;TempSense.c,28 :: 		delay_ms(500);
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
;TempSense.c,29 :: 		}
	GOTO       L_main0
;TempSense.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
