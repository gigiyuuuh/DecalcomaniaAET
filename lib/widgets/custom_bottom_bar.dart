import 'package:decalcomania_aet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeBlueGray400,
      activeIcon: ImageConstant.imgHomeBlueGray400,
      type: BottomBarEnum.homeBluegray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRewind,
      activeIcon: ImageConstant.imgRewind,
      type: BottomBarEnum.rewind,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgInfo,
      activeIcon: ImageConstant.imgInfo,
      type: BottomBarEnum.info,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLinkedin,
      activeIcon: ImageConstant.imgLinkedin,
      type: BottomBarEnum.linkedin,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.lock,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.v,
      decoration: BoxDecoration(
        color: appTheme.gray300,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.blueGray900,
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.blueGray400,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  homeBluegray400,
  rewind,
  info,
  linkedin,
  lock,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
