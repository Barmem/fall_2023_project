import 'package:flutter/material.dart';


class SettingsSpacebar extends StatelessWidget {
  
  final String profilePicture;
  final String name;

  const SettingsSpacebar({
    this.profilePicture = 'assets/hp.webp',
    this.name = "Рыцарь",
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 0.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    elevation:12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        profilePicture,
                        scale: 7,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.exit_to_app),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(name, style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
