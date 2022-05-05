import 'package:firebase_database/firebase_database.dart';


class Orders {
  late String? _orderId;
  late String? _userId;
  late String? _productLink;
  late String? _productImage;
  late String? _productTitle;
  late String? _description;
  late double _price;
  late String? _deliveryPrice;
  late int _amount;
  late String? _from;
  late String? _to;
  late String? _additional;

  Orders(this._orderId,this._userId,this._productLink,this._productImage,
      this._productTitle,this._description,this._price, this._deliveryPrice,this._amount,this._from, this._to, this._additional);



  Orders.map(dynamic obj){
    _productLink = obj['productLink'];
    _productImage = obj['_productImage'];
    _productTitle = obj['_productTitle'];
    _description = obj['_description'];
    _price = obj['_price'];
    _deliveryPrice = obj['_deliveryPrice'];
    _amount = obj['_amount'];
    _from = obj['_from'];
    _to = obj['_to'];
    _additional = obj['_additional'];
  };

  String? get orderId => _orderId;
  String? get userId => _userId;
  String? get productLink => _productLink;
  String? get productImage => _productImage;
  String? get productTitle => _productTitle;
  String? get description => _description;
  double get price => _price;
  String? get deliveryPrice => _deliveryPrice;
  int get amount => _amount;
  String? get from => _from;
  String? get to => _to;
  String? get additional => _additional;



  Orders.fromSnapShot(DataSnapshot snapshot){
    _orderId = snapshot.key;
    _userId = snapshot.value!['userId'] as String?;
    _productLink = snapshot.value['name'];
    _productImage = snapshot.value['name'];
    _productTitle = snapshot.value['name'];
    _description = snapshot.value['name'];
    _price = snapshot.value['name'];
    _deliveryPrice = snapshot.value['name'];
    _amount = snapshot.value['name'];
    _from = snapshot.value['name'];
    _to = snapshot.value['to'];
    _additional = snapshot.value['additional'];
  }
}
