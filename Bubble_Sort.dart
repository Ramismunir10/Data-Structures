/* Bubble Sort Write a Dart code that takes in a list of integers and prints a new list with
the elements sorted in ascending order. The original list should remain
unchanged.*/

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  print("Original array: $numbers");

  int n = numbers.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        // Swap numbers[j] and numbers[j + 1]
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  print("Sorted array: $numbers");
}