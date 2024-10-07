
_rotate0:

;ServoMotor.c,2 :: 		void rotate0() {
;ServoMotor.c,3 :: 		for(i = 0; i < 50; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_rotate00:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotate018
	MOVLW      50
	SUBWF      _i+0, 0
L__rotate018:
	BTFSC      STATUS+0, 0
	GOTO       L_rotate01
;ServoMotor.c,4 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;ServoMotor.c,5 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_rotate03:
	DECFSZ     R13+0, 1
	GOTO       L_rotate03
	DECFSZ     R12+0, 1
	GOTO       L_rotate03
	NOP
;ServoMotor.c,6 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;ServoMotor.c,7 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_rotate04:
	DECFSZ     R13+0, 1
	GOTO       L_rotate04
	DECFSZ     R12+0, 1
	GOTO       L_rotate04
	NOP
	NOP
;ServoMotor.c,3 :: 		for(i = 0; i < 50; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ServoMotor.c,8 :: 		}
	GOTO       L_rotate00
L_rotate01:
;ServoMotor.c,9 :: 		}
L_end_rotate0:
	RETURN
; end of _rotate0

_rotate90:

;ServoMotor.c,11 :: 		void rotate90() {
;ServoMotor.c,12 :: 		for(i = 0; i < 50; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_rotate905:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotate9020
	MOVLW      50
	SUBWF      _i+0, 0
L__rotate9020:
	BTFSC      STATUS+0, 0
	GOTO       L_rotate906
;ServoMotor.c,13 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;ServoMotor.c,14 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_rotate908:
	DECFSZ     R13+0, 1
	GOTO       L_rotate908
	DECFSZ     R12+0, 1
	GOTO       L_rotate908
	NOP
;ServoMotor.c,15 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;ServoMotor.c,16 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_rotate909:
	DECFSZ     R13+0, 1
	GOTO       L_rotate909
	DECFSZ     R12+0, 1
	GOTO       L_rotate909
	NOP
	NOP
;ServoMotor.c,12 :: 		for(i = 0; i < 50; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ServoMotor.c,17 :: 		}
	GOTO       L_rotate905
L_rotate906:
;ServoMotor.c,18 :: 		}
L_end_rotate90:
	RETURN
; end of _rotate90

_rotate180:

;ServoMotor.c,20 :: 		void rotate180() {
;ServoMotor.c,21 :: 		for(i = 0; i < 50; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_rotate18010:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotate18022
	MOVLW      50
	SUBWF      _i+0, 0
L__rotate18022:
	BTFSC      STATUS+0, 0
	GOTO       L_rotate18011
;ServoMotor.c,22 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;ServoMotor.c,23 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_rotate18013:
	DECFSZ     R13+0, 1
	GOTO       L_rotate18013
	DECFSZ     R12+0, 1
	GOTO       L_rotate18013
	NOP
	NOP
;ServoMotor.c,24 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;ServoMotor.c,25 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_rotate18014:
	DECFSZ     R13+0, 1
	GOTO       L_rotate18014
	DECFSZ     R12+0, 1
	GOTO       L_rotate18014
	NOP
;ServoMotor.c,21 :: 		for(i = 0; i < 50; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ServoMotor.c,26 :: 		}
	GOTO       L_rotate18010
L_rotate18011:
;ServoMotor.c,27 :: 		}
L_end_rotate180:
	RETURN
; end of _rotate180

_main:

;ServoMotor.c,28 :: 		void main () {
;ServoMotor.c,29 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;ServoMotor.c,30 :: 		portb = 0x00;
	CLRF       PORTB+0
;ServoMotor.c,31 :: 		while(1) {
L_main15:
;ServoMotor.c,32 :: 		rotate0();
	CALL       _rotate0+0
;ServoMotor.c,33 :: 		rotate90();
	CALL       _rotate90+0
;ServoMotor.c,34 :: 		rotate180();
	CALL       _rotate180+0
;ServoMotor.c,35 :: 		}
	GOTO       L_main15
;ServoMotor.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
