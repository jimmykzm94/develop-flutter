import 'dart:ffi';

// typedef for C implementation
typedef AddFunc = Int32 Function(Int32, Int32);

// typdef for Dart implementation
typedef AddFuncDart = int Function(int, int);

// Import C lib
final myLib = DynamicLibrary.open('bin/calculate.so');
final add = myLib.lookupFunction<AddFunc, AddFuncDart>('add');

void main() {
  int result = add(3, 4);
  print('The result of adding 3 and 4 is $result.');
}
