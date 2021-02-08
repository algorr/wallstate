import 'package:wallstate/model/categories_model.dart';

List<CategoriesModel> getCategories(){
  List<CategoriesModel> categories = List();
  CategoriesModel categoriesModel = CategoriesModel();


  //
  categoriesModel.imgUrl =
  "assets/images/animal.jpg";
  categoriesModel.categorieName = "Wild Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
  "assets/images/nature.jpg";
  categoriesModel.categorieName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
  "assets/images/city.jpg";
  categoriesModel.categorieName = "City";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
  "assets/images/motivasion.jpg";
  categoriesModel.categorieName = "Motivation";

  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
  "assets/images/bikes.jpg";
  categoriesModel.categorieName = "Bikes";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imgUrl =
  "assets/images/cars.jpg";
  categoriesModel.categorieName = "Cars";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}