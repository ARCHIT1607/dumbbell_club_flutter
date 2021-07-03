import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool _checkbox = false;
  final TextEditingController _previousPwd = TextEditingController();
  final TextEditingController _newPwd = TextEditingController();
  final TextEditingController _confirmNewPwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFFC4C4C4)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Container(
            padding: EdgeInsets.only(left: 70.0),
            child: Text(
              'My Account',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text(
                'Email',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              subtitle: Text('@ architmc@gmail.com'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.userCircle,
                color: Colors.white,
              ),
              title: Text(
                'Username',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              subtitle: Text('@ username'),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.lock,
                color: Colors.white,
              ),
              title: Text(
                'Edit Password',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
            ),
            EditTextFieldPwd(
              textEditingController: _previousPwd,
              text: "Enter previous password",
            ),
            EditTextFieldPwd(
              textEditingController: _newPwd,
              text: "Enter new password",
            ),
            EditTextFieldPwd(
              textEditingController: _confirmNewPwd,
              text: "Confirm new password",
            ),
            Row(
              children: [
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = !_checkbox;
                    });
                  },
                ),
                Text('Change password'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEA6003),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF484D61),
                  ),
                ),
              ],
            )
          ],
        ))));
  }
}

class EditTextFieldPwd extends StatelessWidget {
  const EditTextFieldPwd({
    Key? key,
    required TextEditingController textEditingController,
    this.text,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final TextEditingController _textEditingController;
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextField(
        controller: _textEditingController,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(hintText: text),
      ),
    );
  }
}
