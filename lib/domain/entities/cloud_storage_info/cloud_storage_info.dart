import 'package:flutter/material.dart';
import 'package:flutter_modular_app_template/infrastructure/core/shared/constants.dart';

class CloudStorageInfo {
  String? svgSrc;
  String? title;
  String? totalStorage;
  int? numOfFiels;
  int? percentage;
  Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiels,
    this.percentage,
    this.color
  });
}

List myFilesMock = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: mtPrimaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
