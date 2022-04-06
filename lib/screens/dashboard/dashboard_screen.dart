import 'package:file_manager/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConst.defaultPadding),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Text('Dashboard', style: Theme.of(context).textTheme.headline6),
              const Spacer(),
              const Expanded(child: SearchField()),
              Container(
                margin: EdgeInsets.only(left: AppConst.defaultPadding),
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConst.defaultPadding,
                    vertical: AppConst.defaultPadding / 2),
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Image.asset(AppImages.profilePic, height: 38),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppConst.defaultPadding),
                      child: Text('Angelina Joli'),
                    ),
                    const Icon(Icons.keyboard_arrow_down,
                        color: Colors.white54),
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: const EdgeInsets.all(AppConst.defaultPadding / 2),
              padding: const EdgeInsets.all(AppConst.defaultPadding * 0.75),
              child: SvgPicture.asset(AppIcons.search),
            ),
          ),
        ),
        fillColor: AppColor.secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
