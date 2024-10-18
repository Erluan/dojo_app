import 'package:flutter/material.dart';
import 'package:flutter_modular_app_template/domain/entities/cloud_storage_info/cloud_storage_info.dart';
import 'package:flutter_modular_app_template/infrastructure/core/shared/constants.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/file_info_card.dart';

class MyFilesGridView extends StatelessWidget {
  int? crossAxisCount;
  double? childAspectRatio;

  MyFilesGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: myFilesMock.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount!,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio!,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: myFilesMock[index]),
    );
  }
}