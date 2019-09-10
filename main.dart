import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: new Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child:
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child:
                  Text("後台系統", style: TextStyle(fontSize: 50),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 50),
                child:
                RaisedButton(
                    child: new Text("進入"),
                    onPressed: ()
                    {
                      Navigator.push(context, new MaterialPageRoute(builder:(context) => new MainScreen()),
                      );
                    }
                ),
              )


            ],
          ),
        )
    );
  }
}

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainScreenState();
  }
}
class MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: new Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                child:
                RaisedButton(
                    child: new Text("藥品資料"),
                    onPressed: ()
                    {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) => new MedicineData()),
                      );
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child:
                RaisedButton(
                    child: new Text("人員權限"),
                    onPressed: ()
                    {

                    }
                ),
              )
            ],
          ),
        )
    );
  }
}
class MedicineData extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MedicineDataState();
  }
}
class MedicineDataState extends State<MedicineData> {

  Widget _buildList(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Row(

        children: <Widget>[
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["107項次"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),

          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["中文"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["健保價"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["健保單位"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["健保碼"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["國際條碼"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["廠商"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["成份"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          /* Container(
              width: 150,
              child:
              Center(
                child:
                Text.rich(
                    TextSpan(
                      text: document["數量"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                    )),)),*/
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["系統代碼"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["藥名"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["類型"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
            width:  150,
            height: 50,

            child:
            RaisedButton(
                child: new Text("詳細資料"),
                onPressed: ()
                {
                  Navigator.push(context, new MaterialPageRoute(builder:(context) => new NumberData()),
                  );
                }
            ),
          ),

        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
//    final width = MediaQuery.of(context).size.width;


    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: Scrollbar(
            child:SingleChildScrollView(   //讀入資料放入可提供水平滑動
                scrollDirection: Axis.horizontal,

                child: SizedBox(
                    width:1850,



                    child: Column(
                        children: <Widget>[



                          SizedBox(
                            height:40,
                            child:
                            ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                                  ListTile(
                                    title:
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("107項次",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("中文",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("健保價",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("健保單位",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("健保碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("國際條碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("廠商",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("成份",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("系統代碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("藥名",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("類型",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                            Container(
                                            width: 150,
                                            child:
                                            Center(
                                            child:
                                            Text("數量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                            ),
                                            ),
                                          
                                      ],
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Expanded(
                              child:

                              StreamBuilder<QuerySnapshot>(
                                  stream: Firestore.instance.collection('DrugBank').snapshots(),
                                  builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
                                    if(!snapshot.hasData) return Text("loading...");
                                    List<DocumentSnapshot> docs = snapshot.data.documents;


                                    return Scrollbar(
                                      child: ListView.builder(
                                          padding: const EdgeInsets.all(5.0),
                                          scrollDirection: Axis.vertical, //讓list可以向下滑
                                          shrinkWrap: true,
                                          itemCount: docs.length,
                                          itemBuilder: (context, index){
                                            return Container(
                                              //  height: 200,
                                              //  放入標題內容,
                                              child: Column(

                                                children: <Widget>[
                                                  _buildList(context, snapshot.data.documents[index]),



                                                ],


                                              ) ,
                                            );
                                          }),
                                    );
                                  }
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}

class NumberData extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NumberDataDataState();
  }
}
class NumberDataDataState extends State<NumberData>
{
  Widget _buildList2(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Row(

        children: <Widget>[
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["藥名"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),

          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["批號"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["效期"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["發票條碼"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["數量"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),



        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: Scrollbar(
            child:SingleChildScrollView(   //讀入資料放入可提供水平滑動
                scrollDirection: Axis.horizontal,

                child: SizedBox(
                    width:800,
                    child: Column(
                        children: <Widget>[

                          SizedBox(
                            height:40,
                            child:
                            ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                                  ListTile(
                                    title:
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("藥名",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("批號",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("效期",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("發票條碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("數量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Expanded(
                              child:

                              StreamBuilder<QuerySnapshot>(
                                  stream: Firestore.instance.collection('DrugBank').document('SRGesJNfoBzdUyeYPaOc').collection('number').snapshots(),

                                  builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
                                    if(!snapshot.hasData) return Text("loading...");
                                    List<DocumentSnapshot> docs = snapshot.data.documents;


                                    return Scrollbar(
                                      child: ListView.builder(
                                        //   padding: const EdgeInsets.all(5.0),
                                          scrollDirection: Axis.vertical, //讓list可以向下滑
                                          shrinkWrap: true,
                                          itemCount: docs.length,
                                          itemBuilder: (context, index){
                                            return Container(


                                              //  height: 200,
                                              //  放入標題內容,
                                              child: Column(

                                                children: <Widget>[

                                                  _buildList2(context, snapshot.data.documents[index]),





                                                ],


                                              ) ,
                                            );
                                          }),
                                    );
                                  }
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}
