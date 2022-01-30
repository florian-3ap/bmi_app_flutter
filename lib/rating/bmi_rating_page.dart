import 'package:bmi_app_flutter/layout/custom_drawer.dart';
import 'package:bmi_app_flutter/rating/bmi_rating_detail_page.dart';
import 'package:bmi_app_flutter/util/bmi.dart';
import 'package:flutter/material.dart';

class BmiRatingPage extends StatelessWidget {
  const BmiRatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Rating Legend'),
      ),
      drawer: const CustomDrawer(),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: BMI.bmiRatings.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BmiRatingDetailPage(
                              rating: BMI.bmiRatings[index])),
                    )
                  },
              child: SizedBox(
                height: 50,
                child: Center(child: Text(BMI.bmiRatings[index].name)),
              ));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
