import 'package:flutter/material.dart';
import 'package:treinnig/core/helpers/navigation_helper.dart';
import 'package:treinnig/screens/login.dart';
import 'package:treinnig/screens/sign_up_screen.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  int currentindex = 0;
  List<Map<String, String>> images = [
    {
      "image": "assets/Fast loading-rafiki 1.png",
      "title": "Easy, Fast & Trusted",
      "des":
          "Fast money transfer and gauranteed safe\n transactions with others."
    },
    {
      "image": "assets/Mobile payments-rafiki 1.png",
      "title": "Free Transactions",
      "des":
          "Provides the quality of the financial system\n with free money transactions without any fees."
    },
    {
      "image": "assets/Plain credit card-pana 1.png",
      "title": "Bills Payment Made Easy",
      "des": "Pay monthly or daily bills at home\n in a site of TransferMe."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 812,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 450,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentindex = value;
                      });
                    },
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 350,
                            height: 350,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        images[index]["image"].toString()),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            images[index]["title"].toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            images[index]["des"].toString(),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      color: currentindex == index ? Colors.blue : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    NavigationHelper.goToReplacement(context, SignUpScreen());
                  },
                  child: Container(
                    width: 201,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(80, 99, 191, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
