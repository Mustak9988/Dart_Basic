void main(){

  //basically a key value pair
  //like java or c# we can also new keyword but it is optional

  var map1 = {25: 'Khadem', 35: 'Mostak', 40: 'Tamin'};
  var map2 = Map<int, String>();
  map2[1] = 'Tamin';
  map2[2] = 'Tamin';
  map2[3] = 'Tamin';
  map2[4] = 'Tamin';
  map2[1] = 'Tamin';

  for (int x in map2.keys) {
    print(x);
  }

  for (String x in map2.values) {
    print(x);
  }

  print("\n");

  Map<dynamic, dynamic> dMap = Map();
  dMap[1] = 'Dhaka';
  dMap[1.52] = 545;
  print(dMap);
  print(dMap[1.52]);

  print("\n");
  var details = new Map();
  details['Usrname'] = 'admin';
  details['Password'] = 'admin@123';
  print(details);

}