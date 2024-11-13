import 'package:flutter/material.dart';
import '../models/chat_message.dart';
import '../services/chat_service.dart';

class ChatProvider extends ChangeNotifier {
  final ChatService _chatService = ChatService();
  final List<ChatMessage> _messages = [];
  bool _isTyping = false;

  List<ChatMessage> get messages => List.unmodifiable(_messages);
  bool get isTyping => _isTyping;

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;

    _messages.insert(0, ChatMessage(text: text, isUser: true));
    _isTyping = true;
    notifyListeners();

    // Simulate bot response
    Future.delayed(const Duration(seconds: 1), () {
      _isTyping = false;
      _messages.insert(
        0,
        ChatMessage(
          text: _chatService.getBotResponse(text),
          isUser: false,
        ),
      );
      notifyListeners();
    });
  }
}
