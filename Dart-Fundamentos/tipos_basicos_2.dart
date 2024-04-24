/*
  
   - List
   - Set
   - Map
  
*/

main() {
  // List
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  // Map
  Map<String, String> telefone = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (21) 12345-6789',
    'Pedro': '+55 (85) 45455-8989',
  };

  print(telefone is Map);
  print(telefone);
  print(telefone['João']);
  print(telefone.length);
  print(telefone.values);
  print(telefone.keys);
  print(telefone.entries);

  // Set
  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  
  print(times is Set);
  times.add('Palmeiras');
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
}
