import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paynew/constants/styling_constants.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          // main body container
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),

          // main body column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Container(
                  //header container
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // Row for location icon and location text
                            children: const [
                              Icon(
                                Icons.location_on,
                              ),
                              Text(
                                "Sector-44, Real Estate, Sector- 62, Gurugram",
                                style: TextStyle(
                                  fontSize: fontOne,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.8,
                            child: CupertinoSearchTextField(
                              placeholder: "Search for a service",
                              padding: paddingAll(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Icon(Icons.whatsapp),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              // after header line
              const SizedBox(
                height: 2,
              ),
              Container(
                width: width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Group 8131.jpg",
                      width: width,
                      scale: .88,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
