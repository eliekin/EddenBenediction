import 'package:fluent_ui/fluent_ui.dart';



class User extends StatefulWidget {
  static const routeName = 'User';
  User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(title: Text('Ajouter un client',style: TextStyle(color: Colors.blue),),),
    );
  }
}