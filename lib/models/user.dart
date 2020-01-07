
class User {

  String contact;
  String password;
  String nom;
  int id;
  int type;

  User();

  User.fromJson(Map jsonData){
    this.contact = jsonData['contact'];
    this.password = jsonData['password'];
    this.nom = jsonData['nom'];
    this.id = int.parse(jsonData['id']);
    this.type = jsonData['type'];
  }

  void toMap(){
    Map map = {
      'id': id,
      'nom': nom,
      'contact': contact,
      'password': password,
      'type': type,
    };
  }

}


class Commercial extends User{
  
  String nom;
  String commune;
  String quartier;
  int solde;

  Commercial();

  Commercial.fromJson(Map jsonData){

  }

}