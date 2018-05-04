//https://www.dartlang.org/guides/language/language-tour
// import "dart:html";
import "dart:math";

// just like c you have main where program will run
void main(){
  // basic html
  print("hello world!");
  // querySelector("#button").onClick.listen(getSum);

  // dart can use type or dynamic
  var number = 12;
  printInteger(number);

  // everything in dart is object even null
  // dart dont have keyword private or protect, its the same as (_variableName)

  //variables
  var name1 = "bob";
  dynamic name2 = "bob";//or Object
  String name3 = 'bob';// string can be single or double quote
  print("$name1 $name2 $name3");
  // uninitialize is always null
  int testingNull;
  assert(testingNull == null);//similar func in c, '--enable-assert' in command
  print("$testingNull");

  //final and const
  //final var can be set only onece
  //const var is a compil-time constant
  final testingFinal = "bob";
  // testingFinal = "bobby";// error which works as intended
  final String nickname = "bobby";
  print(testingFinal);

  //creating immutable list
  var listTest = const [];
  var listTestNumber = const [1, 2, 3];
  for(int x = 0; x < listTestNumber.length; x++){
    print("listTestNumber index: $x = ${listTestNumber[x]}");
  }//end for

  //build in types, dart has special support types
  /*
    numbers
    strings
    booleans
    lists (also known as arrays)
    maps
    runes (for expressing Unicode characters in a string)
    symbols
   */

  //int and double
  int intDec = 1;
  int hexDec = 0xDEADBEEF;
  double doubleDec = 1.1;
  double exponentsDec = 1.42e5;

  // String -> int
  var one = int.parse('1');
  assert(one == 1);
  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
  // double -> String to 2 decimal places
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // u can do a bitwise shift
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111

  /*Literal numbers are compile-time constants. 
  Many arithmetic expressions are also compile-time 
  constants, as long as their operands are compile-time 
  constants that evaluate to numbers.*/
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;

  //multi line in dart
  var s1 = '''
  You can create
  multi-line strings like this one.
  ''';
  var s2 = """This is also a
  multi-line string.""";
  print(s1);
  print(s2);

  // you can use raw which is r"string" so that even \n is not next line
  var s = r"In a raw string, even \n isn't special.";
  var ss = "In a raw string, even \nisn't special.";
  print(s);
  print(ss);

  // bool
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);
  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);
  // Check for null.
  var unicorn;
  assert(unicorn == null);
  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  //maps, similar to objects in json javascript since it uses map
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // theres also object using map contructor
  var giftsMap = new Map();
  giftsMap['first'] = 'partridge';
  giftsMap['second'] = 'turtledoves';
  giftsMap['fifth'] = 'golden rings';

  var nobleGasesMap = new Map();
  nobleGasesMap[2] = 'helium';
  nobleGasesMap[10] = 'neon';
  nobleGasesMap[18] = 'argon';

  // works this way as well
  //to look for a key that isnt a key, you can compare it with null
  var giftsAdd = {'first': 'partridge'};
  giftsAdd['fourth'] = 'calling birds'; // Add a key-value pair
  assert(giftsAdd.length == 2);//get length similar to any other lang

  //even funtcion are objects, henc you can pass it to var
  //it seems that you can have nested func in dart
  print("isNoble");
  bool isNoble(int atomicNumber) {
    var nobleGases = const ["hellow", "hi", "salute"];
    return nobleGases[atomicNumber] != null;
  }//end func
  //another short hand which is the same as the top
  bool isNoble2(int atomicNumber) => nobleGases[atomicNumber] != null;
  //test
  var isNobleOrNot = isNoble(2);
  print("isNoble() = $isNobleOrNot");

  // optional param,
  /// Sets the bold and hidden flags ...
  void enableFlags({bool bold, bool hidden}) {
    // ...
  }
  //enableFlags(bold: true, hidden: false);//when calling

  /*Optional positional parameters
  Wrapping a set of function parameters
  in [] marks them as optional positional parameters:*/
  String say(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }
  //the function can use = to define default values
  void enableFlagsDefaultParam({bool bold = false, bool hidden = false}) {
    // ...
  }

}//end main

// you can create func without anythting
printInteger(int number){
  print('the number is $number');
}//end func

// basic html
void getSum(MouseEvent event){
  // // select query
  // var firstQuery = querySelector("#first");
  // //convert input element from hteml
  // var test = (firstQuery as InputElement).value;
  // //convert to int
  // int num1 = int.parse((firstQuery as InputElement).value);
  // int num2 = int.parse((firstQuery as InputElement).value);
  // // convert sum to string
  // var sum = (num1 + num2).toString();
  // querySelector("#output").text = "$num2 + $num2 = $sum";
}//end func