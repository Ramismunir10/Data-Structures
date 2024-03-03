void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  print("Original List: $numbers");

  int length = numbers.length;
  List<int> temp = List<int>.filled(length, 0);

  for (int currentSize = 1; currentSize < length; currentSize *= 2) {
    for (int leftStart = 0;
        leftStart < length - 1;
        leftStart += 2 * currentSize) {
      int mid = leftStart + currentSize - 1;
      int rightEnd = (leftStart + 2 * currentSize - 1 < length - 1)
          ? leftStart + 2 * currentSize - 1
          : length - 1;

      int left = leftStart;
      int right = mid + 1;
      int tempIndex = left;

      while (left <= mid && right <= rightEnd) {
        if (numbers[left] <= numbers[right]) {
          temp[tempIndex] = numbers[left];
          left++;
        } else {
          temp[tempIndex] = numbers[right];
          right++;
        }
        tempIndex++;
      }

      while (left <= mid) {
        temp[tempIndex] = numbers[left];
        left++;
        tempIndex++;
      }

      while (right <= rightEnd) {
        temp[tempIndex] = numbers[right];
        right++;
        tempIndex++;
      }

      for (int i = leftStart; i <= rightEnd; i++) {
        numbers[i] = temp[i];
      }
    }
  }

  print("Sorted List: $numbers");
}
