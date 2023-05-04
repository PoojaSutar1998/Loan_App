class VehicleDetails {
  final String carName;
  final String carModel;
  final String carImage;

  VehicleDetails({
    required this.carName,
    required this.carModel,
    required this.carImage,
  });
}
List<VehicleDetails> vehicles = [
  VehicleDetails(
    carName: "Toyota Camry",
    carModel: "2021",
    carImage: "assets/images/Vagnera.png",
  ),
  VehicleDetails(
    carName: "Honda Civic",
    carModel: "2022",
    carImage: "assets/images/img_19.png",
  ),

];
