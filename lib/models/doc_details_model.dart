import 'package:paxform_flutter/utls/image_string.dart';

class DocDetailsModel {
  final String? name;
  final String? yearOfE;
  final double? rating;
  final int? reviewCount;
  final String? image;
  final String? specialty;
  final String? date;
  final bool? like;
  final String? distance;
  final String? avaliableTime;
  const DocDetailsModel({
    this.name,
    this.yearOfE,
    this.rating,
    this.reviewCount,
    this.image,
    this.specialty,
    this.like,
    this.date,
    this.avaliableTime,
    this.distance,
  });
}

final List<DocDetailsModel> nearestDoctors = [
  const DocDetailsModel(
    name: 'Clark Mark',
    yearOfE: "4 years",
    specialty: 'Dentist',
    rating: 4.8,
    like: false,
    reviewCount: 40,
    distance: "2km Away",
    date: "Tomorrow",
    avaliableTime: '10:30am - 05:00pm',
    image: ImageString.pic1,
  ),
  const DocDetailsModel(
    name: 'White Mond',
    yearOfE: "15 years",
    rating: 4.9,
    specialty: 'Neurologist',
    reviewCount: 404,
    distance: "2km Away",
    like: true,
    date: "Tomorrow",
    avaliableTime: '10:30am - 05:00pm',
    image: ImageString.pic2,
  ),
  const DocDetailsModel(
    name: 'Wilson Herwitz',
    yearOfE: "4 years",
    rating: 4.8,
    specialty: 'General Practitioner',
    date: "Tomorrow",
    like: false,
    distance: "2km Away",
    avaliableTime: '10:30am - 05:00pm',
    reviewCount: 40,
    image: ImageString.pic3,
  ),
];
