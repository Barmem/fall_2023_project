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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        // scaffoldBackgroundColor: const Color.fromARGB(1, 1, 1, 1),
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Color.fromARGB(1, 1, 1, 1)
        // ),
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 58, 83, 183),
          // Set brightness explicitly
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Color.fromARGB(255, 58, 83, 183),
          // Set brightness explicitly
          brightness: Brightness.dark,
        ),
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
                      "hi, hello there",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Hi there, hello",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: ListView(
                  children: [
                    const TitleDesc(title: "У вас подключено", description: "Подписки, автоплатежи и сервисы на которые вы подписались",),
                    SizedBox(
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            funnyHorizontalCard(),
                            funnyHorizontalCard(),
                            funnyHorizontalCard(),
                            funnyHorizontalCard(),
                          ],
                        ),
                      ),
                    ),
                    TitleDesc(title: "Тарифы и лимиты", description: "Для операций Сбербанк Онлайн",),
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(Icons.speed, color: Color.fromARGB(255, 4, 255, 0),),
                            TitleDesc(title: "Изменить суточный лимит",description: "На платежи и переводы", padding: EdgeInsets.fromLTRB(8, 0, 8, 0),),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ],
                    ),
                    const Placeholder(fallbackHeight: 1200,)
                  ],
                ),
              ),
              const Center(child: Text('Tab 2 Content')),
            ],
          ),
        ),
      ),
    );
  }
}

