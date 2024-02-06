import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true, 
              floating: false, 
              snap: false, 
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: SafeArea(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(32.0, 16.0, 0.0, 0.0),
                              child: Icon(Icons.close),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/hp.webp',
                                  scale: 7,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 16.0, 32.0, 0.0),
                              child: Icon(Icons.exit_to_app),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Рыцарь", style: TextStyle(fontSize: 20),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              expandedHeight: 300,
              bottom: const TabBar(tabs: [
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
            )
          ]),
            ),
            const SliverFillRemaining(
              child: TabBarView(
                children: [
                  Center(child: Text('Tab 1 Content')),
                  Center(child: Text('Tab 2 Content')),
                ],
              ),
            ),
          ],
        ),
        ));
  }
}
