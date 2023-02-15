import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:video_call/const/conts.dart';

import '../../../provider/home_provider.dart';

class Profilechat_Screen extends StatefulWidget {
  const Profilechat_Screen({Key? key}) : super(key: key);

  @override
  State<Profilechat_Screen> createState() => _Profilechat_ScreenState();
}

class _Profilechat_ScreenState extends State<Profilechat_Screen> {

  NativeAd? nativead;
  bool isAdLoaded = false;



  @override
  initState()  {
    // TODO: implement initState
    super.initState();
    nat();
  }
  ChatUser userr = ChatUser(
    id: '1',
    firstName: 'Charles',
    lastName: 'Leclerc',
  );

  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'Hey!',
      user: ChatUser(id: 'userr'),
      createdAt: DateTime.now(),
    ),
  ];
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.purple, Colors.orange]),
          ),
        ),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/image/mumbai-friendship-friends-tarqcubbn4ids4uy3vcc31sxpjntetc2.jpg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.height * 0.045,
                height: MediaQuery.of(context).size.height * 0.045,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Text("angel&priya1452")
          ],
        ),
      ),
      body: Stack(
        children: [
          DashChat(
            currentUser: userr,
            onSend: (ChatMessage m) {
              setState(() {
                messages.insert(0, m);
              });
            },
            messages: messages,
          ),
          isAdLoaded ?
          Container(
            height: MediaQuery.of(context).size.height*0.15,
            alignment: Alignment.center,
            child: AdWidget(ad: nativead!),
          ) :
          Container(
              height: MediaQuery.of(context).size.height*0.15,
              alignment: Alignment.center,
              child: CircularProgressIndicator()
          ),
        ],
      ),
    );
  }
  void nat(){
    try
    {
      nativead = NativeAd(
        adUnitId: '$na',
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(
            onAdLoaded: (_) {
              setState(() {
                isAdLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error) {
              nat();

            }),
      );
      nativead!.load();
    }
    on Exception
    {}
  }
}
