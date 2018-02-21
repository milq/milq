#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main() {
  // This is a comment
  
  /*
     This is a comment
     on multiple lines
  */
  
  // VARIABLES
  //
  // A variable is a symbol that represents a quantity that may vary.
  //
  // data_type identifier = value; 
  
  int age = 25;  // The value 25 is assigned to variable age
  
  
  
  // BASIC DATA TYPES
  int sea_level = 25;                      // Integer
  double temperature = -3.82;              // Real number
  char name[] = "Nacho López";             // String

  
  
  
  // ARITHMETIC OPERATIONS WITH NUMBERS
  int x = 5;
  int y = 2;
  
  double z = x + y; // Addition.                                     Result: 7.
  z = x - y;        // Subtraction.                                  Result: 3.
  z = x * y;        // Multiplication.                               Result: 10.
  z = x / y;        // Division.                                     Result: 2.5.
  z = x % y;        // Modulo (remainder of the integer division).   Result: 1.
  
  z = z + 1;        // Increase the value of z by 1.                 Result: 2.
  z = z - 1;        // Decrease the value of z by 1.                 Result: 1.
  
  z = 50 - x * 6 / -0.5;        //
  z = (50 - x) * 6 / -0.5;      // The order of operations is as in mathematics
  z = (50 - x * 6) / -0.5;      //
  
  z = 2 * z + 3;                // Remember: the symbol = assigns a value to the variable
  
  
  
  // BASIC OPERATIONS WITH STRINGS
  char a[] = "GNU/";
  char b[] = "Linux";
//  char[] c = a + b;                             // Concatenation     Result: 'GNU/Linux'.
//  c = std::string(a, 3; // Repetition        Result: 'GNU/GNU/GNU/'.
  
  
  
  // PRINT VARIABLES ON SCREEN
  
  printf("Hello, world!\n");     // Prints on screen: Hello, world!
  printf("%d\n", x);             // Prints the variable x
  
  // You can print on screen strings and variables
  printf("I have bought %d oranges and %d lemons.\n", x, y); 
  
  
  
  //  DATA TYPE CONVERSION
  
  char position[] = "5";
  char calories[] = "95.4";
  double altitude = -544.432;
  
  int position_int = atoi(position);                    // Convert to integer.
  double calories_dbl = atof(calories);                 // Convert to double.
  //std::string altitude_str = std::to_string(altitude);              // Convert to string.
  
//  String position_type = ((Object)position_int).getClass().getName();         // Type: integer.
//  String calories_type = ((Object)calories_dbl).getClass().getName();         // Type: float.
//  String altitude_type = ((Object)altitude_str).getClass().getName();         // Type: string.
}

