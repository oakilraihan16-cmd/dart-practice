void main(){

  Set<String> names = {"wakil","samir"};
  print(names);

  names.add("bob");
  print(names);

  names.addAll({'raihan','sadiya'});
  print(names);

  names.remove('bob');
  print(names);

  names.removeAll({'wakil','samir'});
  print(names);

  print(names.elementAt(0));

  print(names.contains('sadiya'));
  
}