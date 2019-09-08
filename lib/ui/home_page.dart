import 'package:agenda_contatos_flutter/helpers/contact_helper.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();


  @override
  void initState() {
    super.initState();
    Contact c = Contact();
    c.name = "Tosco";
    c.email = "adskxxxxxx@ig.com.abr";
    c.phone = "222222";
    c.img = "adfadsfddddd";

    helper.saveContact(c);
    helper.getAllContacts().then((list){
      print(list);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
