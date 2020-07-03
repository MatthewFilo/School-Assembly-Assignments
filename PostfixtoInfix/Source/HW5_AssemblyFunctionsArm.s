  .global toInFix
  .data
  // declare any global variables here
  .text
  toInFix:
  mov   r12,r13		// save stack pointer into register r12
  sub   sp,#32		// reserve 32 bytes of space for local variables 
  push  {lr}		// push link register onto stack -- make sure you pop it out before you return 

  
  // Your Solution here. String used: AB*CDE++

  /* Assignment Planning *********************************************************************************************************************************
      - Create two strings, one with characters and one with operands
      - Scan the original string and store the characters and operands in their own strings
      - Once done, Unload one byte from the character string, one byte from the operand string etc until done
      ***********************************************************************************************************************************************/

  Init:// Counter Variable
   mov r4, #0 // Counter for original string
   mov r5, #0 // One Byte at a time Load for Character String
   mov r6, #0 // One byte at a time load for operand string
   mov r7, #0 // Counter for Character String
   mov r8, #0 //Counter for Operand String
  Loop1:
    ldrb r3, [r0,r4] // Load r3 with r0[r4]
    cmp r3, #0 // If r3 = 0, we have reached null byte
    beq Loop4 // Go to Loop 4
    cmp r3, #'*' // If r3 = *, store in operand string
    beq Loop2 // Go To Loop 2
    cmp r3, #'/' // If r3 = / Store in Operand String
    beq Loop2 // Go To Loop 2
    cmp r3, #'+' //If r3 = +, Store in Operand String
    beq Loop2 // Go To Loop 2
    cmp r3, #'-' // If r3 = -, store in operand string
    beq Loop2  // Go To Loop 2
    bne Loop3  //Otherwise, go to Loop 3
  Loop2: //This will store the Operands in their own string
    strb r3,[r10,r8] // Store the byte in r3 to r10[r8]    
    add r8, #1 //Increment the r8 counter
    add r4, #1 // Increment the r4 counter
    b Loop1 //Branch back to Loop1
  Loop3: // This will store the characters in their own string
    strb r3,[r9,r7] // Store the byte in r3 to r9[r7]
    add r4, #1 // Increment the r4 counter by 1
    add r7, #1 //Increment the r7 counter by 1
    b Loop1  // Branch back to Loop 1
  Loop4: // Reset counter Loop
    mov r3, #0 // We will reset r3 to use the extra register
    mov r4, #0 // Reset r4
    mov r7, #0 // Reset r7
    mov r8, #0 // Reset r8
    b Loop5 // Branch to Loop 5
  Loop5: // Loop to store characters from both operand and character string into r1
    ldrb r3,[r0,r4] // Load r3 with the original string
    ldrb r5,[r9,r7] // Load r5 with the index of character string
    strb r5,[r1,r4] // Store it in r1
    add r4, #1 // Increment the r1 indexer
    ldrb r6, [r10,r8] // Load r6 with the index of the operand string
    strb r6,[r1,r4] //Store the byte in the next index of the r1 string.
    add r4, #1 // Increment r4 by 1
    add r7, #1 // Increment r7 by 1
    add r8, #1 // Increment r8 by 1
    cmp r3, #0 // We go back to r3, If the original string is null, we have reached the capacity for times this loop needs to be ran
    beq Done // If so, then we are done
    b Loop5 // Otherwise, Loop again.
  Done:

  
  pop {lr}
  mov sp, r12
  mov pc, lr 


  			// pop link register from stack 
  // restore the stack pointer -- Please note stack pointer should be equal to the 
					// value it had when you entered the function .  
  			// return from the function by copying link register into  program counter

  
  
  	
  .global toPostFix
  .data
  // declare any global variables here
  .text
  toPostFix:
  mov   r12,r13		// save stack pointer into register r12
  sub   sp,#32		// reserve 32 bytes of space for local variables 
  push  {lr}		// push link register onto stack -- make sure you pop it out before you return 

  

  // Your solution here

// Assignment Planning ***********************************************************************************************************************************************
  // r0 is the holder of the hold string, so through lrdb r#, [r#,r#], we can scroll through the array of characters and detect the character of the array
  // If the character detected is an operator, then we push onto the stack, otherwise hold the character in a different register
  // We have to also have to have a function that determines if the character in the string is the "/0" character, determining the end of the string.
  // We will make a seperate section for each of the operators, a "plus" section, a "minus" section, etc.
  // NOTE: The operators do have precedences, plus and minus are equal precedences, while Multiply and Divide is higher then Plus and Minus
// *******************************************************************************************************************************************************************
  
  // Beginning of Assignment; String used: A+(B*C)+D
  Initialization:
    mov r2, #0 // This is used as the index for the original string.
    mov r3, #0 //This is used as the index for the new string
    mov r4, #0 // This will be used to count the number of operators on the stack
  L1:
    ldrb r5, [r0,r2] // Load Register 5 with the the first element in the original strings array
    ands r5, r5, r5 // We will use ANDS to compare the bit
    beq nullfound //If there is a null byte found, we have reached the end of the string and thus have scanned the whole string.
    add r2, r2, #1 // If not, we add 1 to the index of the original string and we loop back to the beginning of this loop and scan the next element.
    b L1 // Loop back
  nullfound:
    mov r2, #0 // When a null byte is found, we reset the string counter
    b OperandCheck // We move on the check for operands.
  OperandCheck: // Need to find out how to check for next character after operand so that way we can continue searching string after we move the operand onto the stack
    ldrb r5, [r0,r2] // We load the r5 register with the byte found in the index of r0[r2].
    cmp r5, #'+' // We check the r5 register for the addition sign
    beq add // If the addition sign is found, we go to the add loop
    cmp r5, #'-' // Check r5 for the minus sign
    beq minus // If the minus sign is found, we go to the minus loop
    cmp r5, #'*' // Check r5 for the multiplication sign
    beq multiply // If the multiplication sign is found, we go to the multiply loop.
    cmp r5, #'/' // Check r5 for the division sign
    beq divide // If the division sign is found, we go to the division loop.
    b characterstack // Otherwise, go and store the character into the new string
  characterstack: // This is the loop to store the character into the new string
    strb r5,[r1,r3] // Store the byte in r5 to the r1[r3] index
    add r3,#1 // Increment r3 by 1
  OperandFound: // This is the loop that incase an operand is found, we can increment the counter to go to the next index in the array.
    add r2, #1 // Increment r2 by 1
    ldrb r5, [r0,r2] // Load the r5 register with r0[r2]
    cmp r5, #0 // We compare r5 and 0
    bne OperandCheck // If they are not equal, we go back to the OperandCheck Loop
    b stackcheck   // Otherwise, we go to the stackcheck loop to check the stack
  operandpop: // This is the loop to pop operands
    ands r4, r4, r4 // We ANDS r4 with itself.
    beq emptystack // If they are equal, we go to the empty stack loop
    pop {r9} // We will pop a new register, r9
    sub r4, #1 //We subtract r4 by 1
    strb r7,[r1,r3] // We store the r7 register into the new string's r3 index
    add r2, #1 // We increment r2 by 1
    add r3, #1 // We increment r3 by 1
    push {r5} // We push r5 into the stack
    add r4, #1 // We increment r4 by 1
    b OperandCheck // We go back to the Operand checker loop
  emptystack: // This is the loop for an empty stack
    push {r5} // We push r5 onto the stack
    add r4, #1 // We increment r4 by 1
    add r2, #1 // We increment r2 by 1
    b OperandCheck // Now we go back to check for Operands
  add: //If there is an addition sign found
    ands r4,  r4, r4 // We ands r4 against itself
    beq pusher // If they are equal, we go to the pusher loop
    pop {r7} // We pop r7 from the stack
    push {r7} // We will push r7 onto the stack
    cmp r7,#'+' // We will compare r7 against the + sign and if they are equal, we will go to the Operandpop loop, we will do this for all the signs.
    beq operandpop
    cmp r7,#'-'
    beq operandpop
    cmp r7,#'*'
    beq operandpop
    cmp r7,#'/'
    beq operandpop
    cmp r7,#'('
    beq pusher
  minus: // This loop is incase there is an addition sign found
    ands r4,  r4,r4// We ands r4 against itself
    beq pusher // If they are equal, we go to the pusher loop
    pop {r7} // We pop r7 from the stack
    push {r7} // We will push r7 onto the stack
    cmp r7,#'+' // We will compare r7 against the + sign and if they are equal, we will go to the Operandpop loop, we will do this for all the signs.
    beq operandpop
    cmp r7,#'-'
    beq operandpop
    cmp r7,#'*'
    beq operandpop
    cmp r7,#'/'
    beq operandpop
    cmp r7,#'('
    beq pusher
  multiply:
    ands r4,  r4,r4 // We ands r4 against itself
    beq pusher  // If they are equal, we go to the pusher loop
    pop {r7}  // We pop r7 from the stack
    push {r7}  // We will push r7 onto the stack
    cmp r7,#'+' // We will compare the + sign against r7, if they are equal, it will be pushed onto the stack
    beq pusher 
    cmp r7,#'-'// We will compare the - sign against r7, if they are equal, it will be pushed onto the stack
    beq pusher
    cmp r7,#'*' // We will compare the * sign against r7, if they are equal, it will go to the Operand Pop loop
    beq operandpop 
    cmp r7,#'/'  // We will compare the // sign against r7, if they are equal, it will go to the Operand Pop loop
    beq operandpop
    cmp r7,#'('  // We will compare the ( sign against r7, if they are equal, it will be pushed onto the stack
    beq pusher
  divide:
    ands r4, r4,r4 // We ands r4,  r4 against r4
    beq pusher // If they are equal, we go to the pusher loop
    pop {r7}  // We pop r7 from the stack
    push {r7} // We will push r7 onto the stack
    cmp r7,#'+' // We will compare the + sign against r7, if they are equal, it will be pushed onto the stack
    beq pusher
    cmp r7,#'-' // We will compare the - sign against r7, if they are equal, it will be pushed onto the stack
    beq pusher
    cmp r7,#'*' // We will compare the * sign against r7, if they are equal, it will go to the Operand Pop loop
    beq operandpop
    cmp r7,#'/' // We will compare the // sign against r7, if they are equal, it will go to the Operand Pop loop
    beq operandpop
    cmp r7,#'('  // We will compare the ( sign against r7, if they are equal, it will be pushed onto the stack
    beq pusher
  pusher: // The push loop
    push {r5} // We will push r5 onto the stack
    add r4, #1 // We will increment the r4 register by 1
    b OperandFound // We will go back to the OperandFound loop to increase the counter and move on to the next element in the index.
  parenthesis: // This is the loop incase the parenthesis is found
    pop {r5} //We will pop r5 from the stack.
    cmp r5, #'(' // We will compare r5 to the ( sign
    beq removeparenthesis // If they are equal, we will go to the remove parenthesis section
    sub r4, #1 // We will decrement r4 by 1
    strb r5,[r1,r3] //We will store the byte in r5 to the new string loop
    add r3, #1 // We will increment the r3 register by 1
    b parenthesis // We will continue to loop this process until we go to the remove parenthesis section.
  removeparenthesis: // Remove parenthesis section
    sub r4,#1 // We will decrement r4 by 1
    add r2,#1 // We will increment r2 by 1
    b OperandCheck // We will go back to the OperandCheck loop.
  stackcheck: // This is the loop to check if there are any characters onto the stack
    ands r4, r4,r4 // We will ands r4,  r4 against r4
    beq done // If they are equal, we are done
    pop {r7} // If not, we will pop r7 from the stack.
    strb r7,[r1,r3] // We will store the byte from r7 into the r1[r3].
    add r3, #1 // We will increment the r3 register by 1
    sub r4, #1 // We will decrement the r4 register by 1
    b stackcheck // And we will loop through this loop until there are no more characters stuck on the stack.
  done: // We are Done!
    
  
  pop {lr}			// pop link register from stack 
  mov sp,r12		// restore the stack pointer -- Please note stack pointer should be equal to the 
					// value it had when you entered the function .  
  mov pc,lr			// return from the function by copying link register into  program counter
