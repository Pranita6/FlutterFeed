 
import 'package:flutter/material.dart';
import 'package:flutterfeed/constants/assets_constants.dart';
import 'package:flutterfeed/core/enums/notification_type_enum.dart';
import 'package:flutterfeed/theme/pallete.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutterfeed/constants/constants.dart';
import 'package:flutterfeed/models/notification_model.dart' as model;

class NotificationTile extends StatelessWidget {
  final model.Notification notification;
  const NotificationTile({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: notification.notificationType == NotificationType.follow
          ? const Icon(
              Icons.person,
              color: Pallete.blueColor,
            )
          : notification.notificationType == NotificationType.like
              ? SvgPicture.asset(
                  AssetsConstants.likeFilledIcon,
                  color: Pallete.redColor,
                  height: 20,
                )
              : notification.notificationType == NotificationType.retweet
                  ? SvgPicture.asset(
                      AssetsConstants.retweetIcon,
                      color: Pallete.whiteColor,
                      height: 20,
                    )
                  : null,
      title: Text(notification.text),
    );
  }
}
