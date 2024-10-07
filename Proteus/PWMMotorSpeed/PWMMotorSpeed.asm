
_main:

;PWMMotorSpeed.c,1 :: 		void main () {
;PWMMotorSpeed.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;PWMMotorSpeed.c,3 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;PWMMotorSpeed.c,4 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;PWMMotorSpeed.c,6 :: 		portb = 0x00;
	CLRF       PORTB+0
;PWMMotorSpeed.c,7 :: 		portc = 0x00;
	CLRF       PORTC+0
;PWMMotorSpeed.c,9 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;PWMMotorSpeed.c,10 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;PWMMotorSpeed.c,12 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      99
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;PWMMotorSpeed.c,13 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;PWMMotorSpeed.c,14 :: 		PWM1_Set_Duty(0);
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWMMotorSpeed.c,16 :: 		while(1) {
L_main0:
;PWMMotorSpeed.c,17 :: 		if(portd.f0 == 1) {
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;PWMMotorSpeed.c,18 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;PWMMotorSpeed.c,19 :: 		if(portd.f0 == 1) {
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;PWMMotorSpeed.c,20 :: 		PWM1_Set_Duty(10);
	MOVLW      10
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWMMotorSpeed.c,21 :: 		}
L_main4:
;PWMMotorSpeed.c,22 :: 		}
L_main2:
;PWMMotorSpeed.c,23 :: 		if(portd.f1 == 1) {
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;PWMMotorSpeed.c,24 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;PWMMotorSpeed.c,25 :: 		if(portd.f1 == 1) {
	BTFSS      PORTD+0, 1
	GOTO       L_main7
;PWMMotorSpeed.c,26 :: 		PWM1_Set_Duty(-10);
	MOVLW      246
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWMMotorSpeed.c,27 :: 		}
L_main7:
;PWMMotorSpeed.c,28 :: 		}
L_main5:
;PWMMotorSpeed.c,29 :: 		}
	GOTO       L_main0
;PWMMotorSpeed.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
