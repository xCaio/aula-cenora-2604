class Animal {
  String hierarqia = "";
  Animal(){
    hierarqia = "animal";
  }
}

class Passaro extends Animal{
  String qualFamilia() => "Passaro";
  Passaro(){
    hierarqia = "Passaro filho de ${super.hierarqia}";
  }
}
class Mamifero extends Animal{
  String qualFamilia() => "Mamífero";
}
class Papagaio extends Passaro{
  String quemEh() => "Papagaio";
}
class Cachorro extends Mamifero{
  String quemEh() => "Cachorro";
}
class Pardal extends Passaro{
  String quemEh() => "Passaro";
  Pardal(){
    hierarqia = runtimeType.toString() + "filho de " + super.hierarqia;
  }
}

void main(List<String> arguments) {
  // Animal animal = Animal();
  // print(animal.hierarqia);
  Passaro p = Passaro();
  // print(p.hierarqia);
  Pardal pardal = Pardal();
  print(pardal.hierarqia);
}
