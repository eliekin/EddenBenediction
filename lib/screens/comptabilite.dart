import 'package:fluent_ui/fluent_ui.dart';


class Comptabilite extends StatefulWidget {
  static void routeName = 'Comptabilite';
  Comptabilite({Key? key}) : super(key: key);

  @override
  State<Comptabilite> createState() => _ComptabiliteState();
}

class _ComptabiliteState extends State<Comptabilite> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(title: Text('Comptabilite',style: TextStyle(color: Colors.blue),),),
    );
  }
}