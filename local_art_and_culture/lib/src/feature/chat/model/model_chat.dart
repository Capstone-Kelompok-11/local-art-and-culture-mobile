class Chat {
  final String sender;
  final String message;
  final String image;
  final String unreadMessageCount;
  bool isRead;

  Chat(this.sender, this.message, this.image, this.unreadMessageCount,
      this.isRead);
}
