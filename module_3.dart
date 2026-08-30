void main(){
  Map<String,dynamic> person = {
    'name' : 'Wakil',
    'age' :'25',
    'address' :'Dhaka',
    'Ex' : 5,
    'isM' : true,
  };
  print(person);
  print('name:${person['name']}');
  print('age:${person['age']}');
  person['age'] = 26;
  print('age:${person['age']}');

  person['name'] = 'Wakil Raihan';
  print('name:${person['name']}');

  person.remove('age');
  print(person);

  person.addAll({
    'subject' : 'Flutter',
    'CGPA' : 3.75,
  }
    
  );
  print(person);

  print(person.containsKey('age'));
  print(person.containsKey('name'));

  print(person.containsValue('Wakil Raihan'));

  var keylist = person.keys.toList();
  print(keylist);

  var valuelist = person.values.toList();
  print(valuelist);

  print(person.runtimeType);
  print(valuelist.runtimeType);

}