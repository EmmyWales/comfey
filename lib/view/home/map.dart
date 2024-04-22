import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/textFormField.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/map.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FormField2(
                iconData: Icon(
                  Icons.location_on,
                  color: AppColor.primary,
                ),
                text: "Search here...",
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 3.4,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.location_searching_rounded,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 6.5,
            ),
            Container(
              height: 308,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: AppColor.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    FormField2(
                      text: "Lagos Island",
                      iconData: Icon(
                        Icons.location_searching_rounded,
                        color: AppColor.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FormField2(
                      text: "Where to?",
                      suffixData: TextButton(
                        onPressed: () {},
                        child: BaseText(
                          text: "Map",
                          fontSize: 18,
                          color: AppColor.conblck,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    LongButton(text: "Enter Destination ", onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
