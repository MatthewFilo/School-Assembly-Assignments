#include <stdio.h>

extern int computeFrequency(int *, int *, int );

void main(void)
{
  int scores[]={3,3,3,1,2,9,5,4,4,0};
  int N = sizeof(scores);
  int freq[10];
  int i;


  computeFrequency(scores, freq, N);


int j = 0;
while ( j < 10 ){
  printf("freqnumber[%d] = %d\n", j, freq[j]); 
   j++; }



}