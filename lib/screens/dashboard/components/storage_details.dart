import 'package:file_manager/screens/dashboard/components/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resources/resources.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
          padding: const EdgeInsets.all(AppConst.defaultPadding),
          decoration: const BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(children: const [
            Text(
              'Storage Details',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: AppConst.defaultPadding),
            PieChartWidget(),
            StorageInfoCard(
                title: 'Documents Files',
                icon: AppIcons.documents,
                numOfFiles: 1329,
                amountOfFiles: '1,3GB'),
            StorageInfoCard(
                title: 'Media Files',
                icon: AppIcons.media,
                numOfFiles: 26744,
                amountOfFiles: '15,6GB'),
            StorageInfoCard(
                title: 'Other Files',
                icon: AppIcons.folder,
                numOfFiles: 2282,
                amountOfFiles: '2,1GB'),
            StorageInfoCard(
                title: 'Unknown',
                icon: AppIcons.unknown,
                numOfFiles: 32423,
                amountOfFiles: '0,6GB'),
          ]),
        );
  }
}




class StorageInfoCard extends StatelessWidget {
  final String title, amountOfFiles, icon;
  final int numOfFiles;
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.amountOfFiles,
    required this.icon,
    required this.numOfFiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppConst.defaultPadding),
      padding: const EdgeInsets.all(AppConst.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2, color: AppColor.primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppConst.defaultPadding),
        ),
      ),
      child: Row(children: [
        SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(icon),
        ),
        Expanded(
            child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppConst.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '$numOfFiles Files',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        )),
        Text(amountOfFiles)
      ]),
    );
  }
}