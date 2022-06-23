import 'package:fluent_ui/fluent_ui.dart';
import 'package:wipressing/screens/benediction.dart';
import 'package:wipressing/screens/comptabilite.dart';
import 'package:wipressing/screens/recu.dart';
import 'package:wipressing/screens/settings.dart';
import 'package:wipressing/screens/user.dart';

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  static const routeName = 'MyHomePage';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List pages = [Benediction(), User(), Recu(), Comptabilite(), Settings()];

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: NavigationView(
          // appBar: NavigationAppBar(
          //   backgroundColor: Colors.blue.withOpacity(0.4),
          //   title: Text(
          //     'Home',
          //     style: TextStyle(color: Colors.blue, fontSize: 25),
          //   ),
          // ),
          pane: NavigationPane(

              /// The current selected index
              selected: _currentIndex,

              /// Called whenever the current index changes
              onChanged: (i) => setState(() => _currentIndex = i),
              displayMode: PaneDisplayMode.auto,
              items: [
                PaneItem(
                  icon: Icon(
                    FluentIcons.home,
                    color: Colors.blue,
                    size: 20,
                  ),
                  title: const Text('Benediction'),
                ),
                PaneItem(
                  icon: Icon(FluentIcons.add_friend,
                      color: Colors.blue, size: 20),
                  title: const Text('Ajouter un client'),
                ),
                PaneItem(
                  icon: Icon(FluentIcons.account_activity,
                      color: Colors.blue, size: 20),
                  title: const Text('Recu'),
                ),
                PaneItem(
                  icon: Icon(
                    FluentIcons.book_answers,
                    color: Colors.blue,
                    size: 20,
                  ),
                  title: const Text('Comptabilite'),
                ),
              ],
              footerItems: [
                PaneItem(
                  title: const Text('Parametres'),
                  icon: Icon(
                    FluentIcons.settings,
                    color: Colors.blue,
                  ),
                ),
              ]),
          content: NavigationBody.builder(
              index: _currentIndex,
              itemBuilder: ((context, index) {
                return pages[index];
              }))),
    );
  }
}
