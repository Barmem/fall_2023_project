import 'package:flutter/material.dart';
import 'spacebar.dart';
import 'elements.dart';
// import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true; 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 58, 83, 183),
          // Set brightness explicitly
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(0, 0, 0, 0)
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color.fromARGB(255, 58, 83, 183),
          brightness: Brightness.dark,
        ),
        dividerTheme: DividerThemeData(
        space: 0,
        color: Color.fromARGB(183, 117, 117, 117),
        )
      ),
      themeMode: ThemeMode.light, 
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              pinned: true,
              floating: true,
              snap: false,
              flexibleSpace: SettingsSpacebar(),
              expandedHeight: 300,
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Hollow Knight",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Silksong",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TitleDesc(title: "Амулеты", description: "Текущие экипированные амулеты",),
                  ),
                  SizedBox(
                    height: 240,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Row(
                              children: [
                                funnyHorizontalCard(iconTitle: "Капризный компас", subTitle: "Нашёптывает ваше местоположение, когда вы раскрываете карту.", subDescription: "Помогает скитальцу сориентироваться в пространстве.", icon: "assets/Wayward_Compass.webp",),
                                funnyHorizontalCard(iconTitle: "Трюкач", subTitle: "Очень похож на чудаковатого жука, известного лишь как «Трюкач».", subDescription: "Носитель может чаще передвигаться рывками и даже делать рывок вниз. Отлично подходит для тех, кто хочет передвигаться быстрее.", icon: "assets/Dashmaster.webp",),
                                funnyHorizontalCard(iconTitle: "Быстрый удар", subTitle: "Создан из неблаговидных и забракованных гвоздей, сплавившихся воедино. Они всё ещё жаждут обрести хозяев.", subDescription: "Позволяет чаще наносить удары гвоздем. ", icon: "assets/Quick_Slash.webp",),
                                funnyHorizontalCard(iconTitle: "Длинный гвоздь", subTitle: "Увеличивает область атаки гвоздём, позволяя доставать врагов ударом с расстояния.", subDescription: "", icon: "assets/Longnail.webp",),
                                funnyHorizontalCard(iconTitle: "Метка гордости", subTitle: "Племя богомолов награждает подобными амулетами тех, кого они уважают.", subDescription: "Весьма ощутимо увеличивает область атаки гвоздём, позволяя достать противников ударом с большого расстояния.", icon: "assets/Mark_of_Pride.webp",),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleDesc(title: "Меню", description: "Сервисы доступные в Халлоунест",),
                        ButtonIconTextArrow(icon: Image.asset("assets/map.webp", width: 50,), title: "Карта", description: "Навигатор и справочник"),
                        Divider(),
                        ButtonIconTextArrow(icon: Image.asset("assets/map_pin_stag.webp", width: 50,), title: "Рогачи", description: "Вызвать ближайшего рогача"),
                        Divider(),
                        ButtonIconTextArrow(icon: Image.asset("assets/bank.webp", height: 50,), title: "Банк", description: "Надёжные вклады в будущее"),
                        TitleDesc(title: "Амулеты", description: "Список найденных амулетов",),
                        BunchaChips(chipLabels: ["Капризный компас", "Трюкач", "Быстрый удар", "Длинный гвоздь", "Метка гордости", "Загребущий рой", "Ловец душ" , "Пожиратель душ" , "Песнь гусеничек" , "Ярость павшего"]),
                      ],
                    ),
                  )
                ],
              ),
              const Center(child: TitleDesc(title: 'Silksong не найден!', description: "Могу предложить клоунский грим?", placementH: CrossAxisAlignment.center, placementV: MainAxisAlignment.center,)),
            ],
          ),
        ),
      ),
    );
  }
}
