import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/resources.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dashboard', style: Theme.of(context).textTheme.headline6),
        const Spacer(flex: 2),
        const Expanded(child: SearchField()),
        const ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppConst.defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: AppConst.defaultPadding,
          vertical: AppConst.defaultPadding / 2),
      decoration: const BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Image.asset(AppImages.profilePic, height: 38),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConst.defaultPadding),
            child: Text('Angelina Joli'),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white54),
        ],
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
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.white54),
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
