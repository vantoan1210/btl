// Bài thực hành: Các phương thức xử lý List, Set và Map trong Dart

// Họ tên:Nguyen van toan
// MSSV:2121050813
// 1. Các phương thức xử lý List

// Khởi tạo một List số nguyên với giá trị ban đầu
List<int> MyList() {
  List<int> myList = [1, 2, 3, 4, 5];
  return myList;
}

// Viết phương thức tìm kiếm phần tử trong List
int searchElement(List<int> myList, int target) {
  for (int i = 0; i < myList.length; i++) {
    if (myList[i] == target) {
      return i; // Trả về vị trí của phần tử trong List
    }
  }
  return -1; // Trả về -1 nếu không tìm thấy
}

// Viết phương thức trả về phần tử lớn nhất/nhỏ nhất trong List
int findMax(List<int> myList) {
  return myList.reduce((Max, element) => Max > element ? Max : element);
}

int findMin(List<int> myList) {
  return myList.reduce((Min, element) => Min < element ? Min : element);
}

// Viết phương thức lọc các phần tử trong List theo điều kiện
List<int> filterList(List<int> myList, bool Function(int) condition) {
  return myList.where((element) => condition(element)).toList();
}

// Sử dụng các phương thức vừa viết để xử lý dữ liệu trong List
void main() {
  List<int> myList = MyList();
  int target = 3;
  int result = searchElement(myList, target);

  if (result != -1) {
    print('$target được tìm thấy tại vị trí $result trong List.');
  } else {
    print('$target không tồn tại trong List.');
  }

  int max = findMax(myList);
  int min = findMin(myList);

  print('Phần tử lớn nhất trong List: $max');
  print('Phần tử nhỏ nhất trong List: $min');

  List<int> evenNumbers = filterList(myList, (element) => element % 2 == 0);
  print('Các số chẵn trong List: $evenNumbers');
}

// // 2. Các phương thức xử lý Set
// // Khởi tạo một Set số nguyên với giá trị ban đầu
// Set<int> initializeSet() {
//   Set<int> mySet = {1, 2, 3, 4, 5};
//   return mySet;
// }
// // Viết phương thức kiểm tra phần tử có tồn tại trong Set hay không
// bool containsElement(Set<int> mySet, int target) {
//   return mySet.contains(target);
// }
// // Viết phương thức chuyển đổi Set thành List
// List<int> setToList(Set<int> mySet) {
//   return mySet.toList();
// }
// // Sử dụng các phương thức vừa viết để xử lý dữ liệu trong Set
// void main() {
//   Set<int> mySet = initializeSet();
//   int target = 3;
  
//   if (containsElement(mySet, target)) {
//     print('$target tồn tại trong Set.');
//   } else {
//     print('$target không tồn tại trong Set.');
//   }
  
//   List<int> setAsList = setToList(mySet);
//   print('Set chuyển đổi thành List: $setAsList');
// }

// // 3. Các phương thức xử lý Map
// // Khởi tạo một Map với key và value là String
// Map<String, String> initializeMap() {
//   Map<String, String> myMap = {
//     'name': 'Trung',
//     'age': '20',
//     'city': 'Ha Noi',
//   };
//   return myMap;
// }
// // Viết phương thức lấy danh sách key hoặc value của Map
// List<String> getKeys(Map<String, String> myMap) {
//   return myMap.keys.toList();
// }

// List<String> getValues(Map<String, String> myMap) {
//   return myMap.values.toList();
// }
// // Viết phương thức kiểm tra key có tồn tại trong Map hay không
// bool containsKey(Map<String, String> myMap, String key) {
//   return myMap.containsKey(key);
// }
// // Sử dụng các phương thức vừa viết để xử lý dữ liệu trong Map
// void main() {
//   Map<String, String> myMap = initializeMap();
//   String keyToCheck = 'key2';
  
//   if (containsKey(myMap, keyToCheck)) {
//     print('$keyToCheck tồn tại trong Map.');
//   } else {
//     print('$keyToCheck không tồn tại trong Map.');
//   }
  
//   List<String> keys = getKeys(myMap);
//   List<String> values = getValues(myMap);
  
//   print('Danh sách keys trong Map: $keys');
//   print('Danh sách values trong Map: $values');
// }
