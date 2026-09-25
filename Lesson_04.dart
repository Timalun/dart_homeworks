int totalCalls = 0;

void main() {
  greet();
  greet();
  greet();
  print(''); 
  introduce('Alex', 25);
  introduce('Maria', 30);
  introduce('John', 19);
  print('');
  int sumResult = addNumbers(5, 8);
  print('Sum of 5 and 8 is $sumResult.');
  print('');
  double price1 = calculateDiscount(price: 100);
  print('Final price: \$$price1');
  double price2 = calculateDiscount(price: 100, discount: 10);
  print('Final price: \$$price2');
  double price3 = calculateDiscount(price: 100, discount: 5, tax: 2.5);
  print('Final price: \$$price3');
  print('');
  print('Total function calls: $totalCalls');
}
void greet() {
  totalCalls++; 
  print('Hello! Welcome to Dart programming!');
}
void introduce(String name, int age) {
  totalCalls++; 
  print('My name is $name and I am $age years old.');
}
int addNumbers(int a, int b) {
  totalCalls++; 
  return a + b;
}
double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++; double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}