class ChatService {
  String getBotResponse(String message) {
    message = message.toLowerCase();
    if (message.contains('hello') || message.contains('hi')) {
      return 'Hello! How can I help you today? ';
    } else if (message.contains('how are you')) {
      return 'Navigating the digital night, ready to assist! How about you? ';
    } else if (message.contains('bye')) {
      return 'Sayonara! Have a peaceful journey! ';
    }
    return 'Lost in translation? Feel free to rephrase that! 🏮';
  }
}
