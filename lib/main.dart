import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:demo() ,debugShowCheckedModeBanner: false,));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List ans=[0,1,2,3,4,5,6,7,8];

  String win="";
  @override
  void initState() {
    super.initState();
    ans.shuffle();
    for(int i=0;i<ans.length;i++)
    {
      if(ans[i]==0)
      {
        ans[i]="";
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("puzzle",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),backgroundColor: Color(
        0xFF4632FD),centerTitle: true,),
        backgroundColor: Colors.black,
        body: Column(children: [Expanded(child:
        Container(child: Column   (children: [
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Color(0xFF8D3201),child: Row(children: [
              Expanded(child:InkWell(onTap: () => fun(0),child: Container(alignment: Alignment.center,child: Text("${ans[0]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
              Expanded(child:InkWell(onTap: () => fun(1),child: Container(alignment: Alignment.center,child: Text("${ans[1]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
              Expanded(child:InkWell(onTap: () => fun(2),child: Container(alignment: Alignment.center,child: Text("${ans[2]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
            ]),)),
            Expanded(child: Container(color: Color(0xFF8D3201),child: Row(children: [
              Expanded(child: InkWell(onTap: () => fun(3),child: Container(alignment: Alignment.center,child: Text("${ans[3]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
              Expanded(child:InkWell(onTap: () => fun(4),child:  Container(alignment: Alignment.center,child: Text("${ans[4]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
              Expanded(child:InkWell(onTap: () => fun(5),child:  Container(alignment: Alignment.center,child: Text("${ans[5]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
            ]),)),
            Expanded(child: Container(color: Color(0xFF8D3201),child: Row(children: [
              Expanded(child:InkWell(onTap: () => fun(6),child: Container(alignment: Alignment.center,child: Text("${ans[6]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
              Expanded(child:InkWell(onTap: () => fun(7),child:  Container(alignment: Alignment.center,child: Text("${ans[7]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
              Expanded(child:InkWell(onTap: () => fun(8),child:  Container(alignment: Alignment.center,child: Text("${ans[8]}",style: TextStyle(fontSize: 100,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),margin: EdgeInsets.all(4),decoration: BoxDecoration(color: Color(0xFFC9832A),border: Border.all(width: 1,color: Colors.black)))),),
            ]),)),
            Expanded(child: Container(child: Text("$win",style: TextStyle(color: Colors.white,fontSize: 46),),))
          ],))
        ]),), )],)
    );
  }
  fun(int a)
  {
    setState(() {
      if(a==0)
      {
        if(ans[1]==""){
          ans[1]=ans[0];
          ans[0]="";
        }
        if(ans[3]==""){
          ans[3]=ans[0];
          ans[0]="";
        }
      }
      if(a==1) {
        if (ans[0] == "") {
          ans[0] = ans[1];
          ans[1] = "";
        }
        if (ans[2] == "") {
          ans[2] =ans[1];
          ans[1] ="";
        }
        if (ans[4] == "") {
          ans[4] =ans[1];
          ans[1] ="";
        }


      }
      if (a == 2) {
        if (ans[1] == "") {
          ans[1] = ans[2];
          ans[2] = "";
        }
        if (ans[5] == "") {
          ans[5] = ans[2];
          ans[2] = "";
        }
      }
      if(a==3){
        if(ans[0]=="") {
          ans[0] = ans[3];
          ans[3] = "";
        }
        if(ans[4]=="") {
          ans[4] = ans[3];
          ans[3] = "";
        }
        if(ans[6]=="") {
          ans[6] = ans[3];
          ans[3] = "";
        }
      }
      if(a==4)
      {
        if (ans[1] == "") {
          ans[1] =ans[4];
          ans[4] ="";
        }

        if(ans[3]=="")
        {
          ans[3]=ans[4];
          ans[4]="";
        }
        if(ans[7]=="")
        {
          ans[7]=ans[4];
          ans[4]="";
        }
        if(ans[5]=="")
        {
          ans[5]=ans[4];
          ans[4]="";
        }
      }
      if(a==5)
      {
        if(ans[4]=="")
        {
          ans[4]=ans[5];
          ans[5]="";
        }
        if(ans[8]=="")
        {
          ans[8]=ans[5];
          ans[5]="";
        }
        if(ans[2]=="")
        {
          ans[2]=ans[5];
          ans[5]="";
        }
      }
      if(a==6)
      {
        if(ans[7]=="")
        {
          ans[7]=ans[6];
          ans[6]="";
        }
        if(ans[3]=="")
        {
          ans[3]=ans[6];
          ans[6]="";
        }
      }
      if(a==7)
      {
        if(ans[8]=="")
        {
          ans[8]=ans[7];
          ans[7]="";
        }
        if(ans[6]=="")
        {
          ans[6]=ans[7];
          ans[7]="";
        }
        if(ans[4]=="")
        {
          ans[4]=ans[7];
          ans[7]="";
        }
      }
      if(a==8)
      {
        if(ans[7]=="")
        {
          ans[7]=ans[8];
          ans[8]="";
        }
        if(ans[5]=="")
        {
          ans[5]=ans[8];
          ans[8]="";
        }
      }
      print(win);
    });
  }


}
