void main() {
    //Task1:
    int num;
    for(num=1;num<=30;num++){
        if(num%3==0){
    print('Fizz');
   }else{
    print(num);
   }
    }

    //task2:
    List<String> fruits=['apple','banana','mango','kiwi'];
    for(int i=0;i<fruits.length;i++){
    print('$i:${fruits[i]}');
   }

   //Task3:
   List<int> Scores=[55,82,90,43,77];
   int Sum=0;
   for(int i=0;i<Scores.length;i++){
    Sum=Sum+Scores[i];
   }
    double average=Sum/Scores.length;
   print('Sum:$Sum');
   print('average:$average');
   
   //Task4:
   Map<String,int>  ages={'Sara':20,'Omar':23,'Lalia':19};
   for(String name in ages.keys){
     print('$name is ${ages[name]} years old');
    
   }
   //Taske5:
    List<int> Numbers=[12,45,3,89,21,67];
   int largest=Numbers[0];
   for(int i=0;i<Numbers.length;i++){
    if(Numbers[i]>largest)
       largest=Numbers[i];
   } 
   print('largestnumber:$largest');

//Taske6:
List<Map <String,dynamic>> products=[
  {'name':'Book','price':40},
  {'name':'Pen','price':5},
  {'name':'Bag','price':120}];
int total=0;
for(var product in products){
     print('${product['name']}:${product['price']}');
     total+= product['price'] as int;
   }
   print('total price:$total');

   //bouns:
   List<Map<String, dynamic>> prod = [
    {'name': 'Book', 'price': 40, 'qty': 2},
    {'name': 'Pen', 'price': 5, 'qty': 10},
    {'name': 'Bag', 'price': 120, 'qty': 1},
  ];
  int Total = 0;
  int max = 0;
  String? topItemName;
  for (var item in prod) {
    int price = item['price'];   
    int qty = item['qty'];      
    int cost = price * qty;
    print('${item['name']}: $cost');
    Total += cost;
    if (cost > max) {
      max = cost;
      topItemName = item['name'];      
    }
  }
  print('Total cost: $Total');
  print('Highest cost item: $topItemName ($max)');
}

    
