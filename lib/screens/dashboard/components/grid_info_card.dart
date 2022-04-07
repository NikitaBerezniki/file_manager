import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/my_files.dart';
import '../../../resources/resources.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.4,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: AppConst.defaultPadding,
          mainAxisSpacing: AppConst.defaultPadding / 2,
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio),
      itemBuilder: (context, index) => FileInfoCard(file: demoMyFiles[index]),
    );
  }
}

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo file;
  const FileInfoCard({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConst.defaultPadding),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: AppColor.secondaryColor),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                padding: const EdgeInsets.all(AppConst.defaultPadding * 0.4),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: file.color.withOpacity(0.1),
                        spreadRadius: 2)
                  ],
                  color: file.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  file.icon,
                  color: file.color,
                ),
              ),
              IconButton(
                  icon: (const Icon(Icons.more_vert, color: Colors.white54)),
                  onPressed: () {}),
            ]),
            Text(
              file.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            ProgressLine(file: file),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${file.numOfFiles} files',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70)),
                Text(file.totalStrage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white))
              ],
            )
          ]),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.file,
  }) : super(key: key);

  final CloudStorageInfo file;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: file.color.withOpacity(0.1),
                    spreadRadius: 1)
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: file.color.withOpacity(0.1)),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * file.percentage / 100,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: file.color),
          ),
        ),
      ],
    );
  }
}
