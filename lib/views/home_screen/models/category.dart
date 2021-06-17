class CategoryItem {
  final String userAvatarPath;
  final String userName;
  final String itemImagePath;
  final String itemName;
  final String itemDescription;
  bool isFavorite;

  CategoryItem({
    required this.userAvatarPath,
    required this.userName,
    required this.itemImagePath,
    required this.itemName,
    required this.itemDescription,
    required this.isFavorite,
  });
}
