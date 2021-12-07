class ContactModel {
  late String nom;
  String? phone;
  late String imageUrl;

  //ContactModel(this.nom,this.imageUrl,{this.phone="0978154329"});
//ContactModel(this.phone,this.nom,this.imageUrl);

  ContactModel({required this.imageUrl, required this.nom, this.phone});
}
