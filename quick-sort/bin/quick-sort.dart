final List items = [];

void main(List<String> arguments) {
  var sorted = quickSort(0, items.length - 1);
  print(sorted.toString());
}

void swap(leftIndex, rightIndex) {
  var temp = items[leftIndex];
  items[leftIndex] = items[rightIndex];
  items[rightIndex] = temp;
}

partition(left, right) {
  var sum = (right + left) / 2;
  var pivot = items[sum.floor()], i = left, j = right;

  while (i <= j) {
    while (items[i] < pivot) {
      i++;
    }
    while (items[j] > pivot) {
      j--;
    }
    if (i <= j) {
      swap(i, j);
      i++;
      j--;
    }
  }
  return i;
}

List quickSort(left, right) {
  var index;
  if (items.length > 1) {
    index = partition(left, right);
    if (left < index - 1) {
      quickSort(left, index - 1);
    }
    if (index < right) {
      quickSort(index, right);
    }
  }
  return items;
}
