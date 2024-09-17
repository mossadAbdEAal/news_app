import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/custom_cards.dart';

// ignore: must_be_immutable
class Listviewcards extends StatelessWidget {
   Listviewcards({super.key});
  List<Cards> cards=[
    Cards(imagepath: 'assets/business.avif',text: 'business',),
    Cards(imagepath: 'assets/entertaiment.avif',text: 'entertainment',),
    Cards(imagepath: 'assets/general.avif',text: 'general',),
    Cards(imagepath: 'assets/health.avif',text: 'health',),
    Cards(imagepath: 'assets/science.avif',text: 'science',),
    Cards(imagepath: 'assets/sports.avif',text: 'sports',),
    Cards(imagepath: 'assets/technology.jpeg',text: 'technology',),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.builder(
          physics:const BouncingScrollPhysics(),
                   scrollDirection: Axis.horizontal,
                   itemCount: cards.length,
                   itemBuilder: (BuildContext context, int index) {
                return cards[index];
              },
            ),
      ),
    );
  }
}
