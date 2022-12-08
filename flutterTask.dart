import 'dart:io';


void printingBackWords(String word){
  stdout.write('Backwords sentence : ');
  for(int i = word.length-1;i>=0;i--){
    stdout.write(word[i]);
  }
  print('');
}


void main(){
  //Example1
  for(;;){
    try{
      print("Please enter the radius of the circle :");
      double radius = double.parse(stdin.readLineSync()!);
      const pi =22/7;
      double area = double.parse((2*pi*radius).toStringAsFixed(2));
      print("Area = $area");
      break;
    }
    catch(_){
      print("Try again !");
    }

    //Example2
    for(;;){
      print("Enter the name of the file");
      String name = stdin.readLineSync()!;
      int dotIndex = name.indexOf('.');
      if (name.contains('.')) {
        stdout.write('Extension of the file : ');
        for (int i = dotIndex + 1; i < name.length; i++) {
          stdout.write(name[i]);
        }
        print('');
        break;
      }
      else {
        print("Try again !");
      }
    }


    //Example3
    for(; ;){
      try{
        print("Please enter the number :");
        double num = double.parse(stdin.readLineSync()!);
        double difference;
        if(num>23){
          difference = num-23;
          difference*=difference;
          print("Difference = $difference");
        }
        else{
          difference= num-23;
          difference=difference.abs();
          print("Difference = $difference");
        }
        break;
      }
      catch(_){
        print("Try again !");
      }
    }


    //Example4
    bool isPrime = true ;
    print("Prime numbers : ");
    for(int i=2;i<=100;i++){
      for(int j =2 ; j<=100 ; j++){
        if(i!=j && i%j==0  ){
          isPrime = false ;
          break;
        }
      }
      if(isPrime){
        stdout.write('$i  ');
      }
      isPrime=true;
    }
    print('');


    //Example5
    List<String> colorList = ["Red","Green","White" ,"Black"];
    print("First color is ${colorList[0]}");
    print("Last color is ${colorList[colorList.length-1]}");


    //Example6
    List vowelLetters = ['a','o','e','u','i'];
    List capitalVowelLetters = ['A','O','E','U','I'];
    print("Please enter the letter : ");
    String letter = stdin.readLineSync()!;
    if(vowelLetters.contains(letter) || capitalVowelLetters.contains(letter)){
      print("Letter is vowel");
    }
    else{
      print("Letter is not vowel");
    }


    //Example7
    print("Enter a sentence : ");
    String sentence = stdin.readLineSync()!;
    printingBackWords(sentence);


    //Example8
    print("Enter a sentence : ");
    String sentence2 = stdin.readLineSync()!;
    sentence = sentence.replaceAll(' ', '');
    print("Sentence without spaces : $sentence2");




  }
















}