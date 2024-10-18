
import 'package:flutter/material.dart';

import 'package:flutter_modular_app_template/infrastructure/core/configs/responsive.dart';
import 'package:flutter_modular_app_template/infrastructure/core/shared/constants.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/my_files_gridview.dart';

class MyFiles extends StatelessWidget {
  MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: MyFilesGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
            // childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
          desktop: MyFilesGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}


