import 'dart:collection';
import 'dart:io';

enum colors {red, green, blue}

void main(List<String> arguments) {
  // this is a comment
  /*
   This is multiple lines comment
  */

  bool isOn = true;
  num people = 10;
  double temp = 32.06;
  int test = int.parse('12.09', onError: (source) => 0);
  print('err = ${test}');

  //get a substring
  String name = 'Bryan Cairns';
  String firstname = name.substring(0,5);
  print('firstname = ${firstname}');

  //get the index of a string
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print('lastname = ${lastname}');

  //length
  print(name.length);

  //contains
  print(name.contains('ryan'));

  //Create a list
  List parts = name.split(' ');
  print(parts);
  print(parts[0]);

  //constants
  String hello = 'hello';
  const String world = 'world';
  print( hello+ ' ' + world);

  //user input
  stdout.write('what is your name?\r\n');
  String? namee = stdin.readLineSync();

  namee!.isEmpty ? stderr.write('Name is empty') : stdout.write('Hello ${name}\r\n');

  print(colors.values);

  //List
  List list = [1,2,3,4];
  print(list.length);
  print('first item is ${list[0]}');
  print(list.elementAt(1));

  List things = [];
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things);

  List<int> numbers = <int>[];
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);

  //Set
  Set<int> numberss = <int>{};
  numberss.add(1);
  numberss.add(2);

  //Queue
  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  items.removeFirst();
  items.removeLast();

  //Map
  Map peoplee = {'dad': 'Bryan', 'son': 'Chris', 'daughter': 'Healther'};
  print(peoplee);
  print('Keys are ${peoplee.keys}');
  print('Values are ${peoplee.values}');
  print('Dad is ${peoplee['dad']}');

  Map<String, String> peopleee = <String, String>{};
  peopleee.putIfAbsent('dad', () => 'Bryan');
  peopleee.putIfAbsent('son', () => 'Chris');

  //Assert
  int age = 43;
  assert(age == 43);

  //If Else
  int agee = 43;

  if(agee == 43) print('You are 43 yaers old.');
  if(agee != 43) print('Your are not 43 years old.');

  if(agee < 18){
    print('You are a minor.');
    if(age<13) print('You are not even a teenager.');
  }

  if(agee > 65){
    print('You are a senior');
    if(agee > 102) print('You are lucky to be alive');
  }

  if(agee == 21){
    print('This is just a special year.');
  } else {
    print('This is just a normal year');
    if(age < 21){
      print('You are a minor.');
    } else {
      print('You are an adult.');
    }
  }

  //Scope
  int ageee = 43;
  bool hasBills = true;
  if(ageee == 43){
    print('You are 43');
  } else{
    print('You are ${ageee} and has bills ${hasBills}');
  }

  //Switch
  int agge = 18;
  switch(agge) {
    case 18:
      print('You are 18, you can vote');
      break;

    case 21:
      print('You are 21, you are an adult');
      break;

    case 65:
      print('You can 65, you can retire');
      break;

    default:
      print('Nothing special about this age');
      break;
  }

  //Loops
  int value;
  int init = 1;
  int max = 5;

  value = init;

  do{
    print(value);
    value++;
  }while(value <= max);

  print('Done with do loop');

  while(value <= max){
    print(value);
    value++;
  }
  print('Done with while loop');

  //For Each
  List ppeople = ['Brian', 'Chris', 'Heather'];
  print(ppeople);
  for(int i=0; i< ppeople.length ; i++){
    print('Person at ${i} is ${ppeople[i]}');
  };

  ppeople.forEach((element) {print(element);});

  //Basic Function
  String nname = 'Bryan';
  testing();
  sayHello('Bryan');

  print('Your age is dog years in ${dogYears(43)}');
  
  int wall1 = squareFeet(10, 10);
  int wall2 = squareFeet(10, 10);
  int wall3 = squareFeet(10, 10);
  int wall4 = squareFeet(10, 10);
  int ceiling = squareFeet(20, 10);
  
  double paint = paintNeeded(wall1, wall2, wall3, wall4, ceiling);
  print('You ${paint} gallons of paint');

  int footage = squareFeets(10, 5);

  (){print('hello');};
  List peoople = ['Bryan', 'Heather', 'Chris'];
  peoople.forEach(print);
  peoople.forEach((name) { print(name); });


  try{
    int agge = 0;
    int dogyears = 7;

    if(agge == null) throw new NullThrownError();

    print(agge * dogyears);
  } on NullThrownError{
    print('The value was null!');
  } on NoSuchMethodError{
    print('Sorry thats not going to happen');
  } catch(e) {
    print('There was an error: ${e.toString()}');
  } finally {
    print('complete');
  }
}

void testing(){
  print('testing');
}

void sayHello([String name = '']){
  if(name.isNotEmpty) name = name.padLeft(name.length + 1);
  print('Hello ${name}');
}

void download(String file, [bool open = false]){
  print('Download ${file}');
  if(open) print('Opening ${file}');
}

int dogYears(int age){
  return age * 7;
}

int squareFeet(int width, int length){
  return width * length;
}

double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling){
  int footage = wall1 + wall2 + wall3 + wall4 + ceiling;
  return footage / 30;
}

int squareFeets(int width, int length){
  return width * length;
}

void downloads(String file, {int port: 80}){
  print('Download ${file} on port ${port}');
}
