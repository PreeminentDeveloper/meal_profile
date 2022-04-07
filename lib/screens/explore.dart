import 'package:flutter/material.dart';
import 'package:meal_profile/model/listMealModel.dart';
import 'package:meal_profile/service/meal_service.dart';
import 'package:flutter_svg/svg.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  MealService mealService = MealService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchMeal();
  }

  var response;
  bool loading = false;
  ListMealModel listMealModel = ListMealModel();

  fetchMeal() async {
    setState(() => loading = true);
    try {
      response = await mealService.fetchMeal();
      setState(() {
        listMealModel = ListMealModel.fromJson(response);
        loading = false;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(child: CircularProgressIndicator(color: Color(0XFFFFC700)))
        : Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            appBar: AppBar(
              title: Text("Explore",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF013A4D))),
              backgroundColor: Colors.transparent,
              titleSpacing: 12,
              leadingWidth: 30,
              actions: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image(
                      height: 9,
                      width: 7.94,
                      image: AssetImage("assets/images/search.png"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image(
                      height: 24,
                      width: 22.64,
                      image: AssetImage("assets/images/cart_notification.png"),
                    ),
                  ),
                )
              ],
              elevation: 0,
              leading: Icon(Icons.arrow_back_ios_new_rounded,
                  color: Color(0XFF000000), size: 15),
            ),
            body: SingleChildScrollView(
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: double.infinity,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/global_steak.png"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 20, bottom: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Global Steak",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF333333))),
                                SizedBox(height: 10),
                                Text("Supreme King Size Double Steak Burger",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Monteserrat-light.tff",
                                        color: Color(0XFF333333))),
                                SizedBox(height: 5),
                                Text("Steak Burger",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Monteserrat-light.tff",
                                        color: Color(0XFF333333))),
                              ],
                            ),
                            Column(
                              children: [
                                Text("\$30",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0XFF333333))),
                                SizedBox(height: 10),
                                Container(
                                    height: 26,
                                    width: 71,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFFFC700),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text("Add to cart",
                                            style: TextStyle(
                                                color: Color(0XFF000000),
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400)))),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MealOption(
                                name: "Steaks",
                                color: Color(0XFFFFC700),
                              ),
                              MealOption(
                                  name: "Veg", color: Colors.transparent),
                              MealOption(
                                  name: "Beef", color: Colors.transparent),
                              MealOption(
                                  name: "Chicken", color: Colors.transparent),
                            ],
                          ),
                        ),
                        Container(
                          height: 500,
                          child: GridView.count(
                              crossAxisCount: 3,
                              crossAxisSpacing: 15.0,
                              mainAxisSpacing: 100.0,
                              children: List.generate(
                                  listMealModel.data!.length, (index) {
                                var data = listMealModel.data?[index];
                                return Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Wrap(
                                    children: [
                                      MealItem(
                                          // image: data!.image,
                                          name: data!.title,
                                          price: "\$${data.price}"),
                                      // SizedBox(height: 30)
                                    ],
                                  ),
                                );
                              })),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ));
  }
}

class MealItem extends StatelessWidget {
  final String? image;
  final String? name;
  final String? price;
  const MealItem({Key? key, this.image, this.name, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image == null
        // ?
        Image.asset(
          "assets/images/burger.png",
          height: 125,
          width: 125,
        )
        // : SvgPicture.network("$image")
        ,
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 10),
          child: Text("$name",
              style: TextStyle(
                  color: Color(0XFF333333),
                  fontSize: 10,
                  fontWeight: FontWeight.w600)),
        ),
        SizedBox(height: 8),
        Container(
            height: 30,
            width: 93,
            decoration: BoxDecoration(
                color: Color(0XFFFFC700),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Add to cart  ',
                        style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 9,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                      text: '$price',
                      style: TextStyle(
                          color: Color(0XFF333333),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class MealOption extends StatelessWidget {
  final String? name;
  final Color? color;

  const MealOption({Key? key, this.name, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 19,
            width: 42,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text("$name",
                    style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 7,
                        fontWeight: FontWeight.w400)))),
        SizedBox(width: 25)
      ],
    );
  }
}
