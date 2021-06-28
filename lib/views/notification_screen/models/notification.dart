class NotificationItem {
  final String userAvatarPath;
  final String userName;
  final String itemImagePath;
  final String itemDescription;
  bool isFollow;

  NotificationItem({
    required this.userAvatarPath,
    required this.userName,
    required this.itemImagePath,
    required this.itemDescription,
    required this.isFollow,
  });
}
