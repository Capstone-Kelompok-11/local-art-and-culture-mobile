import 'dart:convert';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import '../chatbot/model/chatbot_model.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatbotScreen> {
  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();
  List<Message> msgs = [];
  bool isTyping = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      msgs.add(Message(false,
          "Silahkan memilih pertanyaan cepat yang ingin kamu tanyakan!;Kenapa barang yang saya pesan tidak kunjung sampai?;Bagaimana cara melacak status pengiriman pesanan?;Bagaimana cara mengajukan pengembalian barang?;Apa itu Lokasani?"));
      msgs.add(
        Message(false, "Halo, Ada yang bisa kami bantu?"),
      );
    });
  }

  void sendMsg() async {
    String text = controller.text;
    String apiKey = "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";
    controller.clear();
    try {
      if (text.isNotEmpty) {
        setState(() {
          msgs.insert(0, Message(true, text));
          isTyping = true;
        });
        scrollController.animateTo(0.0,
            duration: const Duration(seconds: 1), curve: Curves.easeOut);
        var response = await http.post(
            Uri.parse("https://api.openai.com/v1/chat/completions"),
            headers: {
              "Authorization": "Bearer $apiKey",
              "Content-Type": "application/json"
            },
            body: jsonEncode({
              "model": "gpt-3.5-turbo",
              "messages": [
                {
                  "role": "user",
                  "content": text,
                },
                {
                  "role": "system",
                  "content":
                      "Response as a customer service operating in the field of local art and cultural events, originating from a company named Lokasani.",
                },
              ]
            }));
        if (response.statusCode == 200) {
          var json = jsonDecode(response.body);
          setState(() {
            isTyping = false;
            msgs.insert(
                0,
                Message(
                    false,
                    json["choices"][0]["message"]["content"]
                        .toString()
                        .trimLeft()));
          });
          scrollController.animateTo(0.0,
              duration: const Duration(seconds: 1), curve: Curves.easeOut);
        }
      }
    } on Exception {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Some error occurred, please try again!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 1,
                blurRadius: 6, // changes position of shadow
              ),
            ],
          ),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                Image.asset(
                  "assets/icons/Lokasani.png",
                  height: 32,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "LokaSani BOT",
                  style: GoogleFonts.plusJakartaSans(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
                controller: scrollController,
                itemCount: msgs.length,
                shrinkWrap: true,
                reverse: true,
                itemBuilder: (context, index) {
                  if (index == msgs.length - 2) {
                    List<String> options = msgs[msgs.length - 2].msg.split(";");
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 76),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10,
                                        top: 8,
                                        right: 30,
                                        bottom: 16),
                                    child: Text(
                                      options[0],
                                      style: GoogleFonts.plusJakartaSans(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.text = options[1];
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 4,
                                          right: 30,
                                          bottom: 4),
                                      child: Text(
                                        options[1],
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xff0063F7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade300,
                                    thickness: 1,
                                    endIndent: 30,
                                    indent: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.text = options[2];
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 4,
                                          right: 30,
                                          bottom: 4),
                                      child: Text(
                                        options[2],
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xff0063F7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade300,
                                    thickness: 1,
                                    endIndent: 30,
                                    indent: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.text = options[3];
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 4,
                                          right: 30,
                                          bottom: 4),
                                      child: Text(
                                        options[3],
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xff0063F7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade300,
                                    thickness: 1,
                                    endIndent: 30,
                                    indent: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.text = options[4];
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          top: 4,
                                          right: 30,
                                          bottom: 10),
                                      child: Text(
                                        options[4],
                                        style: GoogleFonts.plusJakartaSans(
                                          color: Color(0xff0063F7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    child: isTyping && index == 0
                        ? Column(
                            children: [
                              BubbleNormal(
                                text: msgs[0].msg,
                                isSender: true,
                                color: Color(0xffC2CDEF),
                                textStyle: GoogleFonts.plusJakartaSans(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 4),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Typing..."),
                                ),
                              )
                            ],
                          )
                        : BubbleNormal(
                            text: msgs[index].msg,
                            isSender: msgs[index].isSender,
                            color: msgs[index].isSender
                                ? Color(0xffC2CDEF)
                                : Color(0xffFFFFFF),
                            textStyle: GoogleFonts.plusJakartaSans(
                              color: msgs[index].isSender
                                  ? Colors.black
                                  : Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                  );
                }),
          ),
          SizedBox(
            height: 0,
          ),
          Stack(
            children: [
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 6, // changes position of shadow
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, left: 16),
                        child: TextField(
                          controller: controller,
                          textCapitalization: TextCapitalization.sentences,
                          onSubmitted: (value) {
                            sendMsg();
                          },
                          textInputAction: TextInputAction.send,
                          showCursor: true,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Tulis pertanyaanmu di sini"),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      sendMsg();
                    },
                    child: Container(
                      height: 56,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Color(0xff3653B0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
