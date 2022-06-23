import 'package:fluent_ui/fluent_ui.dart';



class Benediction extends StatefulWidget {
  static const routeName = 'Benediction';
  Benediction({Key? key}) : super(key: key);

  @override
  State<Benediction> createState() => _BenedictionState();
}

class _BenedictionState extends State<Benediction> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(title: Text('Benediction',style: TextStyle(color: Colors.blue),),),
    );
  }
}