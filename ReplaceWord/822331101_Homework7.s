/*
  Summary of what this assignment does:
    It takes the original string and scans it. When it scans the word, it will store the word to be changed into a new array, and if it is not the word we are
    looking for, it will merely just copy the word and store it in our new array. Then we just move our new array and return that
*/

// WARNING: IF SENTENCE IS NOT TYPED OUT IN PROPER ENGLISH, PROGRAM WILL NOT RUN.

.global replaceword
.data
  newarray: // We want to create a new string (array of characters) to store our new string in this and then move it to R0.
    .space 256
.text
replaceword:
  mov r12, r13
  sub sp, #32
  push {lr}

  ldrb r3, =newarray // New String Array where we are storing the words.

  Initialization:
    mov r4, r0  // R4 and R5 will point to the starting adress of a word as we scan word by word
    mov r5, r0 
    mov r6, #0 //Counter variable for how many words were changed
    mov r7, #0
    mov r8, #0 
    mov r9, #0 
    mov r10, #0
    mov r11, #0
    b spacecheck
  spacecheck: // Anytime a space, comma or period is detected, we will compare them and go to a respective branch.
    ldrb r11,[r0,r8]
    cmp r11, #' '
    beq word
    cmp r11, #'.'
    beq word
    cmp r11,#','
    beq word
    cmp r11,#0
    beq finalcheck
    add r5,#1
    add r8,#1
    b spacecheck   
  word:
    push {r0-r12}
    bl wordfind // Whereas my old method of finding a word was by comparing the last char of each word, we will now search for the lengths and make sure they are =.
    cmp r7,#1 // If word is equal, we will return 1 to R7 and therefore it will compare properly if they are equal.
    pop {r0-r12}
    push {r2}
    beq changeword1
    pop {r2}
    b copyogword
  changeword1: // If word is properly detected, we will insert the new word into our new string.
    ldrb r10,[r2]
    cmp r10,#0
    beq done1
    strb r10,[r3,r9]
    add r9,#1
    add r2,#1
    b changeword1
  done1:
    add r6,#1
    pop {r2}
    cmp r11, #','
    beq comma
    cmp r11,#'.'
    beq dot
    b spacestep
  copyogword: // If the word is not the word we are looking for, we copy the word from the original string and insert it into our new array.
    cmp r4,r5
    beq done2
    ldrb r11,[r4]
    strb r11,[r3,r9]
    add r9, #1
    add r4,#1
    b copyogword
  done2:
    add r4,#1
    ldrb r11,[r4]
    cmp r11,#','
    beq comma
    cmp r11,#'.'
    beq dot
    b spacestep
  comma: // Adds a comma when one is detected in old string.
    mov r11,#','
    strb r11,[r3,r9]
    add r9,#1
    add r8,#1
    ldrb r11,[r0,r8]
    cmp r11,#' '
    beq spacestep
    mov r0,#0 //Program crasher if sentence is not properly worded.
    b finished
  dot: // Adds a period when one is detected in old string.
     strb r11,[r3,r9]
     add r9,#1
     add r8,#1
     ldrb r11,[r0,r8]
     cmp r11,#0
     beq end1
     cmp r11, #' '
     beq spacestep
     mov r0, #0 //Program crasher if sentence is not properly worded.
     b finished
  spacestep: // This will add a space to new string when one is detected in old string.
    ldrb r11, =#' '
    strb r11,[r3,r9]
    add r9, #1
    add r8, #1
    add r4, r0, r8
    mov r5, r4
    b spacecheck
  finalcheck: // Makes sure that sentence is ended by the period, otherwise it crashes.
    sub r8,#1
    ldr r7,[r0,r8]
    cmp r7,#'.'
    beq end1
    mov r0,#0
    b finished
  end1: // If everything goes smooth, we insert a null byte at the end of our string, move our new string into r0, and we print it.
    mov r7,#0
    strb r7,[r3,r9]
    mov r0,r3
    bl printf
    mov r0,r6
  finished:
   pop {lr}
   mov sp, r12
   mov pc, lr

.global wordfind // This function will be to make sure that the words are of equal length
.text
wordfind:
  
  mov r12,sp
  sub sp,#32
  push {lr}

  Init2:
    mov r10, #0
    mov r7,#0
  counterforoldword: //Creating a counter for the old word to find its length
    ldrb r9,[r1,r10]
    cmp r9,#0
    beq foundword
    add r7,#1
    add r10,#1
    b counterforoldword  
  foundword:
    sub r8,r5,r4
    cmp r8,r7
    bne notequal
    mov r3,#0
    b confirmation
  confirmation: // As confirmation, we will continue and check the last character to make sure the word is equal.
    ldrb r6,[r4,r3]
    ldrb r9,[r1,r3]
    cmp r6,r9
    bne notequal
    add r3,#1
    cmp r3,r7
    beq equalwords
    b confirmation
 notequal:
    mov r7,#0
    b finishfunction
 equalwords:
    mov r7,#1
  
  finishfunction:
    pop {lr}
    mov sp, r12
    bx lr


    //Below were previous attempts at this homework, was close but did not work
    // Decided to comment it in case I decided to go back to it if current attempt did not work.
 
 // ATTEMPT 1 *********************************************************************************

  /*counterforoldword: // Beings Function by counting amount of characters in new word
    ldrb r3,[r1,r5]
    add r5, #1
    cmp r3, #0
    beq counter2
    add r8, #1
    b counterforoldword
  /*counterfornewword: // Counter for new word
    ldrb r6,[r2,r9]
    cmp r6,#0
    beq counter2
    add r9,#1 
    b counterfornewword*/
  //counter2: // Reset variables
    //mov r5,#0
    //sub r8,#1 // We subtract the Null Byte 
    //sub r9, #1 // We subtract the Null Byte*//

  //**************************************************************************


  /*L1: // Scan the array and if there is a comma, branch off to check if the words are equal
    ldrb r3,[r0,r5]   
    cmp r3,#','
    beq done1
    cmp r3, #0
    beq done2
    add r5,#1
    b L1
  done1: // Branch to check if words are equal
    sub r5, #1 
    ldrb r3,[r0,r5] 
    ldrb r4,[r1,r8] 
    cmp r3,r4
    beq L31
    bne L21

  L21: // Scrolls back through index to check for comma before word
    sub r5,#1
    ldrb r3,[r0,r5]
    cmp r3,#','
    beq L2
    b L21
  L2: // Scrolls through word and stores it in r10 array
    add r5,#1
    ldrb r3,[r0,r5]
    cmp r3, #','
    beq L23
    strb r3,[r10,r7]
    add r7,#1
    b L2
  L23: // After word is stored in new string, insert a comma.
    add r5,#1
    add r7,#1
    mov r3, #','
    strb r3,[r9,r7]
    b L1

  L31: // If word's match loop
    mov r3, #0
  L3:
    ldrb r6,[r2,r3]
    cmp r6,#0
    beq L32
    strb r6,[r9,r7]
    add r7, #1
    add r3,#1
    b L3
  L32:
    add r5, #2
    add r7, #1
    mov r6, #','
    strb r6,[r9,r7]
    b L1

done2:
  mov r7, #0
  b done3
done3: // Moves characters from New String to original string and changes original string characters.
  ldrb r3,[r9,r7]
  cmp r3,#0
  beq finished
  strb r3,[r0,r7]
  add r7,#1
  b done3*/

// **************************************************************************************************




// ATTEMPT 2 *******************************************************************************

/*
.global replaceword
.data
.text
// Global Variables: R0 = *sentence, R1 = *Wordtobereplaced, R2 = *NewWord
replaceword:
  mov r12, r13
  sub sp, #32
  push {lr}


  Initialization:
    mov r3, #0 // Counter Variable for Original Word Length
    mov r4, #0 // Counter Variable for New Word Length
    mov r5, #0 // Array Indexer Variable
    mov r6, #0 // Loader for Strings
    mov r7, #0
    mov r8, #0 // Count of Old Word
    mov r9, #0 // Count of New Word
    mov r10, #0 // New Array that will eventually replace old array at end of function.
  

  counterforoldword: // Beings Function by counting amount of characters in new word
    ldrb r3,[r1,r5]
    add r5, #1
    cmp r3, #0
    beq counterfornewword
    add r8, #1
    b counterforoldword
  counterfornewword: // Counter for new word
    ldrb r6,[r2,r9]
    cmp r6,#0
    beq counter2
    add r9,#1
    b counterfornewword
  counter2: // Reset variables
    mov r5,#0
    sub r8,#1 // We subtract the Null Byte 
    sub r9, #1 // We subtract the Null Byte

  //**************************************************************************

  L1:
    ldrb r3,[r0,r5]   
    cmp r3,#','
    beq done1
    add r5,#1
    b L1
  done1:
    sub r5, #1 
    ldrb r3,[r0,r5] 
    ldrb r4,[r1,r8] 
    cmp r3,r4
    beq L3111
    bne L21

    // ABOVE Is ONE TIME USE  ****************************************************

  L11:
    ldrb r3,[r0,r5]   
    cmp r3,#','
    beq done11
    cmp r3, #0
    beq done
    add r5,#1
    b L11
  done11:
    sub r5, #1 
    ldrb r3,[r0,r5] 
    ldrb r4,[r1,r8] 
    cmp r3,r4
    beq L31
    bne L21

  L21:
    sub r5, #1
    ldrb r6,[r0,r5]
    cmp r6,#',' // Make it so it also checks for a null byte here too
    bne L21
    beq L22
  L22:
    add r5,#1
    b L23
  L23:
    ldrb r6,[r0,r5]
    cmp r6,#','
    beq L2
    strb r6,[r10,r7]
    add r7,#1
    add r5,#1
    b L23
  L2: // Reset for if comma is found
    add r5, #2 
    b L11

  L31:
    mov r7,#0
    b L311
  L311:
    ldrb r6,[r10,r7] // Load register with a byte from New String
    cmp r6, #0 // If register is null, we have reached the end of the new string and we can add onto it
    beq L3111
    add r7, #1 //Otherwise add 1 and keep scrolling through the new string
    b L311
  
  L3111:
    mov r3, #0
    b L3
  L3: // Loop to store new word in new array if Word matches word to be repalced
    ldrb r6,[r2,r3] // Stores byte of new word in r6
    cmp r6, #0 // Compares r6 to see if we have reached null byte
    beq L32 // If we have, go back to L2
    strb r6,[r10,r7] // Otherwise store the byte in our new string, r10
    add r3, #1
    add r7,#1 // Increment the Counter for New String Index
    bne L3 // Loop back to L3.
  L32:
    add r7,#1 // Increment r7 by 1
    mov r9,#',' // Add the comma
    ldrb r6,[r9]
    strb r6,[r10,r7] // Store the comma into the new string
    b L2 // Move onto Scanning the original string


  
  //End of Function
done:
  mov r9, #0
  b done211
done211:
  ldrb r6,[r10,r9]
  cmp r6,#0
  beq done2
  strb r6,[r0,r9]
  add r9, #1
  b done211

done2:
  pop {lr}
  mov sp, r12
  mov pc, lr




/*  L4:
    mov r10, r9
    mov r6,r5
    sub r5,r5,r9
    b L5
  L5:
    mov r11, #0x08
    strb r11,[r0,r5]
    sub r5,#1
    sub r9,#1
    cmp r9,#0
    beq L6
  L6:
    mov r9, r10
    sub r9,#1
    b L71
  L71:
    cmp r5, #0
    beq L72
  L72:
    ///sub r9,#1
    //sub r7,r7,r9
    b L7
  L7:
    ldrb r10,[r2,r9]
    cmp r10,#0
    beq done
    strb r10,[r0,r7]
    sub r9,#1
    sub r7,#1
    b L7 */



  /*scan:
    ldrb r6,[r0,r5] // Loading register r6 with byte of original string
    strb r6,[r3,r5] // Storing that byte into r3
    add r5, #1 // Incrementing the counter to move onto the next variable
    cmp r6, #',' // Checks r6 to see if we have reached a comma
    beq strreg1 // If we have, go onto strreg1
    bne scan // If not, continue scanning the original array
  strreg1:
    sub r5, #1 // Subtract r5 by one to get rid of the comma
    mov r4, r5 // Move r5 into r4
    b strreg // Go onto strreg
  strreg:
    ldrb r6,[r3,r7] // Load register R6 with the Byte of R3
    strb r6,[r8,r7] // Store that byte into r8
    add r7,#1 // Increment the R7 counter
    cmp r7,r4
    bne strreg // If not, Loop Back onto Strreg
    beq changewordchecker // If so, go onto changewordchecker
  changewordchecker:
    tsteq r1,r8 // Makes sure that what is stored in R8 matches the word we need to replace (Stored in R1)
    beq changeword1 // If it is equal, continue changing the word
    bne scan // If it is not equal, then go back and continue scanning the original array.
  changeword1:
    mov r7, #0
    b changeword
  changeword:
    ldrb r6,[r2,r7] // Load r6 with a byte of the new word
    cmp r6,#0 // Compares to see if we have reached the null byte
    beq appendreg // If so, go on to append the register with this replaced word
    strb r6,[r8,r7] // Replaces what was in R8 (The word we scanned to replace), with the new word
    add r7, #1 // Increment the R7 counter.
    b changeword
  appendreg:
    ldrb r6,[r8,r9] // Loads the first byte of R8, our new word
    cmp r6, #0 // Compares to see if it has reached the null byte
    beq done // If so, go onto scan the original array
    strb r6,[r0,r9] //If not, then store that byte into our new string register, R10
    add r9, #1 // Increment the R9 Counter
    b appendreg // Loop */



  
  /*Lengthoforiginalword: // Gets the length of the original word and stores it in r3
    ldrb r6,[r1,r3]
    cmp r6, #0
    beq Lengthofnewword
    add r3, #1
    mov r6, #0
    b Lengthoforiginalword
  Lengthofnewword: // Gets the length of the new word and stores it in r4
    ldrb r6,[r2,r4]
    cmp r6, #0
    beq L2
    add r4, #1
    mov r6, #0
    b Lengthofnewword
  L2: // Checks the original string and the old word string for matching first character, otherwise moves onto the next character.
    ldrb r6,[r0,r5]
    ldrb r7,[r1,r8]
    tst r6,r7
    beq L3
    add r5, #1
    b L2
  L3: // Double checks for the next character in both of the strings, confirming that this is the word we are replacing.
    add r5, #1
    add r8, #1
    ldrb r6,[r0,r5]
    ldrb r7,[r1,r8]
    tst r6,r7
    beq L4
    b L2
  L4: // Counter Reset
    mov r5, #0
    mov r8, #0
    mov r9, #0
    b compare
  compare:
    sub r10, r3, r4
    b L5
  L5: // String replacement
    ldrb r6,[r2,r9]
    strb r6,[r0,r5]
    add r5, #1
    add r9, #1
    sub r10, #1
    cmp r10, #0
    blt moveword1
    b L5  
  moveword1:
    sub r10, r3, r4
    b movword2
  movword2:
    b moveword3
  moveword3:
    mov r9, #'_' // 08 = ASCII value of backspace
    strb r9,[r0,r5]
    add r5,#1
    mov r6, #0
    sub r10, r10, #1
    cmp r10, #0
    bne moveword3
    blt done

/*
wordmover: // r3 original word, R4 new word
  mov r9,#' '
  sub r3,r4
  cmp r3, #0
  bgt moveword
moveword:
  add r6,#1
  strb r9,[r0,r6]
  sub r3, r3, #1
  cmp r3,#0
  bne moveword
  beq nextword

nextword:
  add r6,#1
  ldrb r9,[r0,r6]
  cmp r9, #0
  beq Lengthoforiginalword*/
 
