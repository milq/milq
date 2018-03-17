import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class J02 {
  public static void main(String[] args) {
    List<String> food = new ArrayList<>(Arrays.asList("oranges", "strawberries", "lemons"));

    String x = food.get(0);     // The first element is at index 0
    String y = food.get(1);     // The second element is at index 1
    String z = food.get(2);     // The third element is at index 2

    System.out.println("I like " + x + ", " + y + ", and " + z);



    // COUNT ELEMENTS IN AN ARRAY

    List<String> fruits = new ArrayList<>(Arrays.asList("Apple", "Banana", "Watermelon", "Peach", "Nectarine"));
    int num_fruits = fruits.size(); // The variable 'num_fruits' is 5 (the number of elements of the list 'fruits')
    System.out.println("Number of fruits: " + num_fruits);



    // MODIFY AN ARRAY ELEMENT

    List<Integer> ages = new ArrayList<>(Arrays.asList(43, 72, 32, 22, 65));

    ages.set(3, 57);                  // Modify the element at index 3. Result: [43, 72, 32, 57, 65]
    ages.set(0, 6);                   // Modify the first element.      Result: [6, 72, 32, 57, 65]
    ages.set(ages.size() - 1, 12);    // Modify the last element.       Result: [6, 72, 32, 57, 12]

    System.out.println(ages);



    // ADD AN ELEMENT TO AN ARRAY

    List<String> names = new ArrayList<>(Arrays.asList("Nacho", "David", "Lola"));

    names.add(2, "Alba");      // Add 'Alba' at index 2.         Result: ['Nacho', 'David', 'Alba', 'Lola']
    names.add(0, "Álvaro");    // Add 'Álvaro' at the beginning. Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola']
    names.add("Marta");        // Add 'Marta' at the end.        Result: ['Álvaro', 'Nacho', 'David', 'Alba', 'Lola', 'Marta']

    System.out.println(names);



    // REMOVE AN ARRAY ELEMENT

    List<String> colours = new ArrayList<>(Arrays.asList("Blue", "Orange", "Green", "Yellow", "White"));

    colours.remove(2);                     // Remove the element at index 2. Result: ['Blue', 'Orange', 'Yellow', 'White']
    colours.remove(0);                     // Remove the first element.      Result: ['Orange', 'Yellow', 'White']
    colours.remove(colours.size() - 1);    // Remove the last element.       Result: ['Orange', 'Yellow']

    System.out.println(colours);
  }
}
