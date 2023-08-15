import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  double slidervalue = 0;
  double secondslider = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 28,
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  horizontalTitleGap: 15,
                  minLeadingWidth: 40,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xfffedf4f2),
                    child: Icon(
                      Icons.fire_truck,
                      color: Colors.green,
                    ),
                  ),
                  title: Text("Fast Delivery",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                  trailing: favorite(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(thickness: 1),
              SizedBox(
                height: 5,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                horizontalTitleGap: 15,
                minLeadingWidth: 40,
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xfffedf4f2),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.green,
                  ),
                ),
                title: Text("Stores in my area",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                trailing: favorite(),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(thickness: 1),
              SizedBox(
                height: 5,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                horizontalTitleGap: 15,
                minLeadingWidth: 40,
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xfffedf4f2),
                  child: Icon(
                    Icons.list_alt,
                    color: Colors.green,
                  ),
                ),
                title: Text("Previous orders",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                trailing: favorite(),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(thickness: 1),
              SizedBox(
                height: 5,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                horizontalTitleGap: 15,
                minLeadingWidth: 40,
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xfffedf4f2),
                  child: Icon(
                    Icons.star_border,
                    color: Colors.green,
                  ),
                ),
                title: Text("Popular Orders",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                trailing: favorite(),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(thickness: 1),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "MIN ORDER AMOUNT",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 3,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.red,
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: Colors.white,
                    valueIndicatorColor: Colors.transparent,
                    valueIndicatorTextStyle: TextStyle(color: Colors.black),
                  ),
                  child: Slider.adaptive(
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: "\€${slidervalue.toStringAsFixed(1)}",
                    value: slidervalue,
                    onChanged: (value) {
                      setState(() {
                        slidervalue = value;
                      });
                    },
                  ),
                ),
              ),
              Divider(thickness: 1),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "MIN ORDER AMOUNT",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 5,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.white,
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: Colors.white,
                    valueIndicatorColor: Colors.transparent,
                    valueIndicatorTextStyle: TextStyle(color: Colors.black),
                  ),
                  child: Slider.adaptive(
                    min: 0,
                    max: 10,
                    divisions: 5,
                    label: "\€${secondslider.toStringAsFixed(1)}",
                    value: secondslider,
                    onChanged: (value) {
                      setState(() {
                        secondslider = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "0.5-2km",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "0.5-2km",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "0.5-2km",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "0.5-2km",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Divider(thickness: 1),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "ORDER TYPE",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff4bb769),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Check(),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffff3f4f6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Pick up",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          Check(),
                        ],
                      ),
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

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {});
          like = !like;
        },
        child: like == true
            ? Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                ))
            : Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
              ));
  }
}

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        check = !check;
      },
      child: check == true
          ? Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 18,
              ),
            )
          : Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1),
              ),
            ),
    );
  }
}
