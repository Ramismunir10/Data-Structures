void main() {
  List<int> numbers = [64, 25, 12, 22, 11];

  print("Original List: $numbers");

  int n = numbers.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }

    int temp = numbers[minIndex];
    numbers[minIndex] = numbers[i];
    numbers[i] = temp;
  }

  print("Sorted List: $numbers");
}
