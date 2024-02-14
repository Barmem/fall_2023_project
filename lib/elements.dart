import 'package:flutter/material.dart';

class TitleDesc extends StatelessWidget {
  final String title;
  final String description;
  final double titleSize;
  final double descriptionSize;
  final EdgeInsetsGeometry padding;
  const TitleDesc({
    this.title = 'Заголовок',
    this.description = 'Описание',
    this.titleSize = 20,
    this.descriptionSize = 14,
    this.padding = const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: descriptionSize,
            ),
          ),
          
        ],
      ),
    );
  }
}

class funnyHorizontalCard extends StatelessWidget {
  final String icon;
  final String iconTitle;
  final String subTitle;
  final String subDescription;

  const funnyHorizontalCard({
    this.icon = "assets/hp.webp",
    this.iconTitle = "Сберпрайм",
    this.subTitle = "Платёж 9 июля",
    this.subDescription = "199 руб месяц",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 128, 128, 128).withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 7, // Blur radius
            )
          ],
          color: Theme.of(context).scaffoldBackgroundColor, 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 4, 8),
                  child: Image.asset(icon, height: 50,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                  child: Text(
                    iconTitle,
                    style: const TextStyle(
                      fontSize: 18
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleDesc(title: subTitle, description: subDescription, titleSize:  14, descriptionSize: 10, padding: const EdgeInsets.all(0),),
            )
          ],
        ),
      ),
    );
  }
}
