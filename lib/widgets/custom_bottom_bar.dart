import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';

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
      icon: ImageConstant.imgNavNHNg,
      activeIcon: ImageConstant.imgNavNHNg,
      title: "lbl_n_h_ng".tr,
      type: BottomBarEnum.Nhng,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavTraCCGI,
      activeIcon: ImageConstant.imgNavTraCCGI,
      title: "msg_tra_c_c_g_i_h_ng".tr,
      type: BottomBarEnum.Traccgihng,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.v,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
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
              icon: Opacity(
                opacity: 0.5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      color: appTheme.blueGray900,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style:
                            CustomTextStyles.bodyMediumBluegray90013.copyWith(
                          color: appTheme.blueGray900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    color: theme.colorScheme.primary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodyMediumPrimary.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
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
  Nhng,
  Traccgihng,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
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
