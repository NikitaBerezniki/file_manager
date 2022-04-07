


import 'package:flutter/material.dart';

import '../../../resources/resources.dart';

class AddFilesButton extends StatelessWidget {
  const AddFilesButton({
    Key? key,
  }) : super(key: key);
  void press(){

  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  vertical: AppConst.defaultPadding,
                  horizontal: AppConst.defaultPadding * 1.5)),
          icon: const Icon(Icons.add),
          onPressed: press,
          label: const Text('Add New'),
        )
      ],
    );
  }
}
