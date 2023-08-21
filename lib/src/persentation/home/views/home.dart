import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templategetx/src/persentation/home/controller/home_controller.dart';
import 'package:templategetx/src/persentation/home/views/widget/skeleton.dart';

import '../../../config/themes/themes.dart';
import '../../../core/resources/state_enum.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Event",
          style: blackTextStyle2,
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: eventList(),
      ),
    );
  }

  eventList() {
    return GetX<HomeController>(builder: (controller) {
      final state = controller.eventState;
      print(state);
      if (state == RequestState.loading.obs) {
        var size = Get.width * 0.6;
        return SizedBox(
          height: 30,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) => Skeleton(
              height: 30,
              width: size,
            ),
            separatorBuilder: (context, index) =>
                const SizedBox(width: defaultPadding),
          ),
        );
      } else if (state == RequestState.loaded.obs) {
        var eventData = controller.listEvent;
        print("aaaaa");

        return FadeInLeft(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              primary: false,
              padding: EdgeInsets.only(right: 10.0),
              scrollDirection: Axis.vertical,
              itemCount: eventData.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Get.toNamed('event-detail',
                        arguments: {'event': eventData[i]});
                  },
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                              width: Get.width * 0.5,
                              child: Text(eventData[i].judul ?? "",
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold))),
                          Text(eventData[i].tglMulai.toString(),
                              style: TextStyle(fontSize: 10.0))
                        ],
                      )),
                );
              }),
        );
      } else {
        return SizedBox(
          height: 100,
          child: Container(),
        );
      }
    });
  }
}
