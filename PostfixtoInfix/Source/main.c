/*********************************************************************
*               SEGGER MICROCONTROLLER GmbH & Co. KG                 *
*       Solutions for real time microcontroller applications         *
**********************************************************************
*                                                                    *
*       (c) 2014 - 2016  SEGGER Microcontroller GmbH & Co. KG        *
*                                                                    *
*       www.segger.com     Support: support@segger.com               *
*                                                                    *
**********************************************************************

-------------------------- END-OF-HEADER -----------------------------

File    : main.c
Purpose : Generic application start
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


extern toPostFix(char *, char *);
extern toInFix(char *, char *);

int main(void) {

     static char convertedstring2[16];
     static char convertedstring1[16],checkstring1[16],checkstring2[15],checkstring3[16];
    

     static char string1[16];
     
     strcpy(string1,"A+(B*C)+D");; // AB*(CD)*E++
     static char string2[16]="AB*CDE++";
     
     static char string6[16]="AB*CD*E++"; // A*B*C+D+E
     

      
     toPostFix(string1, convertedstring1);

     toInFix(string2, convertedstring2);

     ///toInFix(string6, checkstring3);

    // toPostFix(convertedstring1, checkstring1);
   //  toPostFix(convertedstring2, checkstring2);

     printf("***********************POSTFIX******************\n");
     printf("\n String 1- Infix to Postfix is %s\n",convertedstring1);
     printf("\n String 2- Postfix to Infix is %s\n",convertedstring2);
     printf("\n*********************INFIX***********************\n");
     printf("\n String 1- Postfix to Infix is %s\n",checkstring3);
     printf("\n String 2- Postfix to Infix is %s\n",checkstring2);
     printf("\n***************************************************");
 
	return EXIT_SUCCESS;
}