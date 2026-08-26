void main(){

  int marks = 175;
  if(marks >=80){
    print('A+');
  }
  else if(marks>=70){
    print('A');
  }
  else if(marks>=60){
    print('A-');
  }
  else if(marks>=55){
    print('B-');
  }
  else if(marks>=50){
    print('B');
  }
  else if(marks>=40){
    print('C');
  }
  else{
    print('Fail');
  }
  
  String day = 'MON';

  switch(day){
    case'Sat':
    print('Off');

    case'Sun':
    print('Office on');

    case'MON':
    print('Office on');

    default:
    print('Basai');
  }
  
    for(int i = 1; i<=10;i++){
      print('12*$i = ${12*i}');
    }

    int j = 1;
    while(j<=10){
      print('13*$j = ${13*j}');
      j++;
    }

    int k = 1;
    do{
       print('14*k = ${14*k}');
       k++;
    }while(k<=10);

}