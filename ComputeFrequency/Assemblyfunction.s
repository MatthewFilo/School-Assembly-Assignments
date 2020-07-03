.global computeFrequency
computeFrequency:
  mov r12, r13
  sub r13, #32
  push {lr}
  

// r0 = scores array, r1 = freq array, r2 = N
  mov r4, #0 // i
  mov r5, #0
  mov r8, #0
  mov r9, #0
  mov r7, #0


  Zero:
    cmp r4, #10
    bge L1
    str r8,[r1,r9, lsl#2]
    add r9, #1
    add r4, #1
    b Zero

  L1:
  cmp r7, r2
  bge done
  ldr r5,[r0,r7,lsl#2]
  ldr r6,[r1, r5, lsl#2]
  add r7, #1
  add r6, r6, #1
  str r6,[r1,r5,lsl#2]
  b L1

  done:

/*
computeFrequency(int *scores, int *freq, int N) 
{ 
  int i;  
  for(i=0; i<N; i++)
    freq[i] = 0;
  for (i=0; i<N; i++) 
    freq[scores[i]] ++; 
}
*/

  pop {lr}
  mov r13, r12
  bx lr