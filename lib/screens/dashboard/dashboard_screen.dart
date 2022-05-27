import 'package:file_manager/resources/resources.dart';
import 'package:file_manager/responsive.dart';
import 'package:flutter/material.dart';
import 'components/add_files_button.dart';
import 'components/grid_info_card.dart';
import 'components/header.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();
    return SafeArea(
      child: SingleChildScrollView(
        controller: _controller,
        padding: const EdgeInsets.all(AppConst.defaultPadding),
        child: Column(children: [
          const HeaderWidget(),
          const SizedBox(height: AppConst.defaultPadding),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Expanded(flex: 5, child: MainSectionWidget()),
            if (!Responsive.isMobile(context))
              const SizedBox(width: AppConst.defaultPadding),
            if (!Responsive.isMobile(context))
              const Expanded(flex: 2, child: StorageDetails())
          ]),
          if (Responsive.isMobile(context))
            Column(
              children: const [
                SizedBox(height: AppConst.defaultPadding),
                StorageDetails(),
              ],
            )
        ]),
      ),
    );
  }
}

class MainSectionWidget extends StatelessWidget {
  const MainSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        const AddFilesButton(),
        const SizedBox(height: 10),
        Responsive(
            mobile: GridViewWidget(
              crossAxisCount: 2,
              childAspectRatio: _size.width < 700 ? 1.8 : 2.8, //1.8
            ),
            tablet: const GridViewWidget(
              crossAxisCount: 4,
              childAspectRatio: 0.9,
            ),
            desktop: GridViewWidget(
                childAspectRatio: _size.width < 1400 ? 1.1 : 1.4)),
        const SizedBox(height: 10),
        const RecentFilesWidget(),
      ],
    );
  }
}
