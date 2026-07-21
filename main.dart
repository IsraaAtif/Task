void main() {
   //Q1:
   int numbers;
   for(numbers=1;numbers<=20;numbers++){
    print(numbers);
   }

   //Q2:
   List<String> foods=["Chicken","Pata","Rice","Meet","Potatoes"];
   for(String item in foods ){
    print(item);
   }

   //Q3:
   List<int> number=[1,2,3,4,5,6,7,8,9,10];
   for(int item in number){
    if(item.isEven)
    print(item);
   }

   //Q4:
    int day=1;
      switch(day){
         case 1:print('Monday');
         break;
         case 2:print('Tuesday');
         break;
         case 3:print('Wednesday');
         break;
         case 4:print('Thursday');
         break;
         case 5:print('Friday');
         break;
         case 6:print('Saturday');
         break;
         case 7:print('Sunday');
         break;
         default: print('Invalid day number');
      }

   //Q5:
   List<int> Num=[10,20,30,40,50];
   int maxNum=Num[0];
   for(int i=0;i<Num.length;i++){
    if(Num[i]>maxNum)
       maxNum=Num[i];
   } 
   print("$maxNum");

   //Q6:
   int counter=1;
   while(counter<=10){
    print("Hello");
    counter++;
   }

   //Q7:
   List<String> student=["Israa","Rashad","Omar","Amina"];
   for(int i=0;i<student.length;i++){
      if(i==2){
      break;
   }
      switch(i){
         case 0:print('First student: ${student[i]}');
         break;
         case 1:print('Second student:${student[i]}');
         break;
         case 2:print('Third student: ${student[i]}');
         break;
         case 3:print('Fourth student: ${student[i]}');
         break;
         default: print('student number${i+1}: ${student[i]}');
      }
   }

    
}