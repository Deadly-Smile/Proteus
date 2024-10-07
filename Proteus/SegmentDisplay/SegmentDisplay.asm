
_turnFirst:

;SegmentDisplay.c,6 :: 		void turnFirst() {
;SegmentDisplay.c,7 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;SegmentDisplay.c,8 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;SegmentDisplay.c,10 :: 		portb = arr[fou];
	MOVF       _fou+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SegmentDisplay.c,11 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_turnFirst0:
	DECFSZ     R13+0, 1
	GOTO       L_turnFirst0
	DECFSZ     R12+0, 1
	GOTO       L_turnFirst0
	NOP
;SegmentDisplay.c,12 :: 		}
L_end_turnFirst:
	RETURN
; end of _turnFirst

_turnSecond:

;SegmentDisplay.c,14 :: 		void turnSecond() {
;SegmentDisplay.c,15 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;SegmentDisplay.c,16 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;SegmentDisplay.c,18 :: 		portb = arr[thi];
	MOVF       _thi+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SegmentDisplay.c,19 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_turnSecond1:
	DECFSZ     R13+0, 1
	GOTO       L_turnSecond1
	DECFSZ     R12+0, 1
	GOTO       L_turnSecond1
	NOP
;SegmentDisplay.c,20 :: 		}
L_end_turnSecond:
	RETURN
; end of _turnSecond

_turnThird:

;SegmentDisplay.c,22 :: 		void turnThird() {
;SegmentDisplay.c,23 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;SegmentDisplay.c,24 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;SegmentDisplay.c,26 :: 		portb = arr[sec];
	MOVF       _sec+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SegmentDisplay.c,27 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_turnThird2:
	DECFSZ     R13+0, 1
	GOTO       L_turnThird2
	DECFSZ     R12+0, 1
	GOTO       L_turnThird2
	NOP
;SegmentDisplay.c,28 :: 		}
L_end_turnThird:
	RETURN
; end of _turnThird

_turnFourth:

;SegmentDisplay.c,30 :: 		void turnFourth() {
;SegmentDisplay.c,31 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;SegmentDisplay.c,32 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;SegmentDisplay.c,34 :: 		portb = arr[fir];
	MOVF       _fir+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SegmentDisplay.c,35 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_turnFourth3:
	DECFSZ     R13+0, 1
	GOTO       L_turnFourth3
	DECFSZ     R12+0, 1
	GOTO       L_turnFourth3
	NOP
;SegmentDisplay.c,36 :: 		}
L_end_turnFourth:
	RETURN
; end of _turnFourth

_main:

;SegmentDisplay.c,39 :: 		void main() {
;SegmentDisplay.c,40 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;SegmentDisplay.c,41 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;SegmentDisplay.c,43 :: 		portb = 0x00;
	CLRF       PORTB+0
;SegmentDisplay.c,44 :: 		portc = 0x00;
	CLRF       PORTC+0
;SegmentDisplay.c,47 :: 		while(1) {
L_main4:
;SegmentDisplay.c,56 :: 		fir = 2;
	MOVLW      2
	MOVWF      _fir+0
;SegmentDisplay.c,57 :: 		sec = 2;
	MOVLW      2
	MOVWF      _sec+0
;SegmentDisplay.c,58 :: 		thi = 2;
	MOVLW      2
	MOVWF      _thi+0
;SegmentDisplay.c,59 :: 		fou = 2;
	MOVLW      2
	MOVWF      _fou+0
;SegmentDisplay.c,60 :: 		for(j = 0; j < 25; j++) {
	CLRF       _j+0
L_main6:
	MOVLW      128
	XORWF      _j+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      25
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;SegmentDisplay.c,61 :: 		turnFirst();
	CALL       _turnFirst+0
;SegmentDisplay.c,62 :: 		turnSecond();
	CALL       _turnSecond+0
;SegmentDisplay.c,63 :: 		turnThird();
	CALL       _turnThird+0
;SegmentDisplay.c,64 :: 		turnFourth();
	CALL       _turnFourth+0
;SegmentDisplay.c,60 :: 		for(j = 0; j < 25; j++) {
	INCF       _j+0, 1
;SegmentDisplay.c,65 :: 		}
	GOTO       L_main6
L_main7:
;SegmentDisplay.c,68 :: 		}
	GOTO       L_main4
;SegmentDisplay.c,70 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
