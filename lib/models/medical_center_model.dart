import 'package:paxform_flutter/utls/image_string.dart';

class MedicalCenterModel {
  final String? image;
  final String? name;
  final String? location;
  final String? reviews;
  final double? ratings;

  const MedicalCenterModel({
    required this.image,
    this.location,
    this.name,
    this.ratings,
    this.reviews,
  });
}

List<MedicalCenterModel> medicalcenters = [
  const MedicalCenterModel(
    image: ImageString.medicalCenter,
    location: "Udomsuk, Bang Na",
    name: "Tyna Medical Center",
    ratings: 4.8,
    reviews: "+2K Review",
  ),
  const MedicalCenterModel(
    image: ImageString.medicalCenter,
    location: "Udomsuk, Bang Na",
    name: "Tyna Medical Center",
    ratings: 4.8,
    reviews: "+2K Review",
  ),
];
