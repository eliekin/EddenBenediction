import 'package:fluent_ui/fluent_ui.dart';
import 'package:wipressing/screens/homePage.dart';


class LoginPage extends StatelessWidget {
  
  
  String? _password;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 3, vertical: MediaQuery.of(context).size.height /3),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 10,
                  child: TextFormBox(
                      obscureText: true,
                      onChanged: ((value) {
                        _password = value;
                      }),
                      header: 'Admin',
                      headerStyle: TextStyle(color: Colors.blue, fontSize: 25),
                      placeholder: 'Password',
                      validator: (text) {
                        if (text == null || text.isEmpty)
                          return 'Provide an email';
                      }),
                ),
              ), SizedBox(width: 20,),
              IconButton(
                icon: Icon(FluentIcons.signin, color: Colors.blue,size: 30,),
                onPressed: () {
                  Navigator.of(context).pushNamed(MyHomePage.routeName);
                },
              ),
            ],
          ),
        ), 
      ),
    );
  }
}
