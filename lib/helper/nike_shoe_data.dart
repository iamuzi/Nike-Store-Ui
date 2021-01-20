import 'package:shoe_ecommerce_app/model/nike_shoe_model.dart';

List<NikeShoeModel> getNikeShoes() {
  List<NikeShoeModel> myNikes = List<NikeShoeModel>();
  NikeShoeModel nikeShoeModel;

/////1 Nike shoe/////
  nikeShoeModel = NikeShoeModel();
  nikeShoeModel.shoeName = 'NIKE-AIR-MAX-260';
  nikeShoeModel.shoeImg = 'assets/images/whiteNike.png';
  nikeShoeModel.amt = '\$240';
  myNikes.add(nikeShoeModel);

  //////// 2 NIke Show//////
  nikeShoeModel = NikeShoeModel();
  nikeShoeModel.shoeName = 'NIKE-AIR-MAX-97';
  nikeShoeModel.shoeImg = 'assets/images/nikeredp.png';
  nikeShoeModel.amt = '\$200';
  myNikes.add(nikeShoeModel);
  return myNikes;
}
