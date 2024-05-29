
import 'package:flutter/material.dart';
import 'package:flutterfeed/constants/assets_constants.dart';
import 'package:flutterfeed/features/explore/view/explore_view.dart';
import 'package:flutterfeed/features/notifications/controller/view/notification_view.dart';
import 'package:flutterfeed/features/tweet/widgets/tweet_list.dart';
import 'package:flutterfeed/theme/pallete.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutterfeed/constants/constants.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }

  static const List<Widget> bottomTabBarPages = [
    TweetList(),
    ExploreView(),
    NotificationView(),
  ];
}
