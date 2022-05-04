import 'package:allemant_peritos/configs/colors.dart';
import 'package:flutter/cupertino.dart';

class MyListGrid {
  final String title, image;
  final Color color;
  final String id;

  MyListGrid(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

final List grids = [
  MyListGrid(
      id: "2",
      title: "INTERIOR",
      image: "assets/images/menu/interior.png",
      color: AppColors.lightBlue),
  MyListGrid(
      id: "1",
      title: "EXTERIOR",
      image: "assets/images/menu/casita.png",
      color: AppColors.lightCyan),
  /* MyListGrid(
      id: "3",
      title: "VEHICULOS",
      image: "assets/images/menu/vehiculo.png",
      color: AppColors.lightPink),
  MyListGrid(
      id: "4",
      title: "MAQUINARIAS",
      image: "assets/images/menu/machine.png",
      color: AppColors.lightYellow), */
];
