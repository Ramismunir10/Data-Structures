void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  print("Original array: $numbers");

  int n = numbers.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }

    // Swap numbers[i] and numbers[minIndex]
    int temp = numbers[i];
    numbers[i] = numbers[minIndex];
    numbers[minIndex] = temp;
  }
  print("Sorted array: $numbers");
}
