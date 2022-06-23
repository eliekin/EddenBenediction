import 'package:fluent_ui/fluent_ui.dart';


class Recu extends StatefulWidget {
  static const routeName = 'Recu';
  Recu({Key? key}) : super(key: key);

  @override
  State<Recu> createState() => _RecuState();
}

class _RecuState extends State<Recu> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(title: Text('Recu',style: TextStyle(color: Colors.blue),),),
    );
  }
}