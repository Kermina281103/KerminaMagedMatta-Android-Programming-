import "dart:math";

void main(){
Random random=Random();
  int degree = random.nextInt(101);

  print("Degree : ${degree}");

  if(degree>=95)
  print("+A");
  else if(degree>=90)
  print("-A");
  else if(degree>=85)
  print("+B");
  else if(degree>=80)
  print("-B");
  else if(degree>=75)
  print("+C");
  else if (degree>=70)
  print("-C");
  else if(degree>=65)
  print("D+");
  else if (degree>=60)
  print("-D");
  else print("F");
  
}
