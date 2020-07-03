extern int replaceword(char* sentence, char* wordToBeReplaced, char* newWord);

#include <stdio.h>

int main(){

      char sentence[256] = "Hello World, Hello Trees.";
      char wordToBeReplaced[] = "Hello";
      char newWord[] = "Bye";
      
      int wordsReplaced = replaceword(sentence, wordToBeReplaced, newWord);
      
      printf("\nNumber of words replaced: %d\n\n", wordsReplaced);
      
      return(0);

}
