#line 1 "C:/Users/Administrator/Desktop/Proteus/SegmentDisplay/SegmentDisplay.c"
short fir = 0, sec = 0, thi = 0, fou = 0, j = 0;
int i = 1000, temp = 0;

int arr[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

void turnFirst() {
 portc.f0 = 0;
 portc.f1 = 0;

 portb = arr[fou];
 delay_ms(10);
}

void turnSecond() {
 portc.f0 = 0;
 portc.f1 = 1;

 portb = arr[thi];
 delay_ms(10);
}

void turnThird() {
 portc.f0 = 1;
 portc.f1 = 0;

 portb = arr[sec];
 delay_ms(10);
}

void turnFourth() {
 portc.f0 = 1;
 portc.f1 = 1;

 portb = arr[fir];
 delay_ms(10);
}


void main() {
 TRISB = 0x00;
 TRISC = 0x00;

 portb = 0x00;
 portc = 0x00;


 while(1) {








 fir = 2;
 sec = 2;
 thi = 2;
 fou = 2;
 for(j = 0; j < 25; j++) {
 turnFirst();
 turnSecond();
 turnThird();
 turnFourth();
 }


 }

}
