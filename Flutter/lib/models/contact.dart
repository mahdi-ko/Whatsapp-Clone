class Contact {
  String id;
  String pic;
  String name;
  String lastChat;
  String lastChatTime;

  Contact(
      {required this.id,
      required this.pic,
      required this.name,
      required this.lastChat,
      required this.lastChatTime});
  Contact.e({
    this.id = 'FontFeature.randomize()',
    this.pic = 'images/all 2017-03-27 001.jpg',
    this.name = "LT bir hasan",
    this.lastChat = "mohammad: done",
    this.lastChatTime = "09:50 PM",
  });
}
