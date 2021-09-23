import 'package:flutter/material.dart';
class customSignIn extends StatefulWidget {
String? name;
String? hint;
IconData? icons;
bool? secure;
bool? sufix;
customSignIn({this.name,this.hint,this.icons,this.secure,this.sufix});

  @override
  _customSignInState createState() => _customSignInState();
}

class _customSignInState extends State<customSignIn> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft,
              child: Text(widget.name!,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),)),
        TextFormField(
          obscureText: widget.secure!,
          decoration: InputDecoration(
            prefixIcon: Icon(widget.icons!,color: Colors.deepPurple,),
            hintText: widget.hint!,
            suffixIcon:
            widget.sufix!?
                
                InkWell(onTap:(){
                 setState(() {
              widget.secure=!widget.secure!;
                 });
                },
                    child: Icon(Icons.remove_red_eye_outlined))
            :null
            ,


          ),
        ),
        ],
      ),
    )
     );
  }
}
