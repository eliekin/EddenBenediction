import 'package:fluent_ui/fluent_ui.dart';

class Settings extends StatefulWidget {
  static const routeName = 'Settings';

  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
       header: PageHeader(title: Text('Parametres',style: TextStyle(color: Colors.blue),),),
    );
  }
}