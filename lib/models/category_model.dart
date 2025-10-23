import 'package:paxform_flutter/utls/image_string.dart';

class CategoryModel {
  final String? image;
  final String? title;
  const CategoryModel({
    required this.image,
    required this.title,
  });
}

List<CategoryModel> categories = [
  const CategoryModel(
    image: ImageString.general,
    title: 'General',
  ),
  const CategoryModel(
    image: ImageString.heart,
    title: 'Heart',
  ),
  const CategoryModel(
    image: ImageString.teeth,
    title: 'Dentist',
  ),
  const CategoryModel(
    image: ImageString.skin,
    title: 'Skin',
  ),
  const CategoryModel(
    image: ImageString.stomach,
    title: 'Stomach',
  ),
  const CategoryModel(
    image: ImageString.lung,
    title: 'Lung',
  ),
  const CategoryModel(
    image: ImageString.bone,
    title: 'bone',
  ),
  const CategoryModel(
    image: ImageString.earDrum,
    title: 'E.T.N',
  ),
];
