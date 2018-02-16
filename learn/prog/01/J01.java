public class J01 {
public static void main(String[] args) {
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
String name = "Nacho López";             // String
boolean has_car = true;                  // Boolean (only two values: True or False)



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
String a = "GNU/";
String b = "Linux";
String c = a + b;                             // Concatenation     Result: 'GNU/Linux'.
c = new String(new char[3]).replace("\0", a); // Repetition        Result: 'GNU/GNU/GNU/'.



// PRINT VARIABLES ON SCREEN

System.out.println("Hello, world!");     // Prints on screen: Hello, world!
System.out.println(x);                   // Prints the variable x

// You can print on screen strings and variables
System.out.println("I have bought " + x + " oranges and " + y + " lemons.");



//  DATA TYPE CONVERSION

String height1 = "95.4";
System.out.println(((Object)height1).getClass().getName());   // Prints the current data type
double height2 =  Double.parseDouble(height1);                // Convert a string to a real number
System.out.println(((Object)height2).getClass().getName());

double altitude1 = -544.432;
System.out.println(((Object)altitude1).getClass().getName());
String altitude2 = String.valueOf(height1);                   // Convert a real number to string
System.out.println(((Object)altitude2).getClass().getName());
}
}
