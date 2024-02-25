import 'package:flutter/material.dart';

class TitleDesc extends StatelessWidget {
  final String title;
  final String description;
  final double titleSize;
  final double descriptionSize;
  final EdgeInsetsGeometry padding;
  final CrossAxisAlignment placementH;
  final MainAxisAlignment placementV;
  const TitleDesc({
    this.title = 'Заголовок',
    this.description = 'Описание',
    this.titleSize = 20,
    this.descriptionSize = 12,
    this.padding = const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
    this.placementH = CrossAxisAlignment.start,
    this.placementV = MainAxisAlignment.start,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: placementH,
        mainAxisAlignment: placementV,
        children: <Widget>[
          Text(
            title,
            softWrap: true,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            softWrap: true,
            style: TextStyle(
              fontSize: descriptionSize,
              color: const Color.fromARGB(255, 144, 144, 144)
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
      padding: const EdgeInsets.fromLTRB(4, 12, 4, 12),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 7,
        // color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ),
    );
  }
}

class ButtonIconTextArrow extends StatelessWidget {

  final Widget icon;
  final String title;
  final String description;

  const ButtonIconTextArrow({
    this.icon = const Icon(Icons.info, color: Color.fromARGB(255, 30, 215, 96),),
    this.title = "Заголовок",
    this.description = "Описание",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  // padding: EdgeInsets.only(bottom:16),
                  child: icon
                  ),
                Expanded(child: TitleDesc(title: title, description: description, padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),)),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BunchaChips extends StatelessWidget {
  final List<String> chipLabels;
  const BunchaChips({
    required this.chipLabels,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> chips = [];

    for (String label in chipLabels) {
      chips.add(
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Chip(
            shape: const StadiumBorder(),
            side: BorderSide.none,
            backgroundColor: Color.fromARGB(19, 128, 128, 128),
            label: Text(label),
          ),
        ),
      );
    }

    return Wrap(
      children: chips,
    );
  }
}
