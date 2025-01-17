import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/images/back.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('FAQ'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.black38,
      ),
      body: Column(

        children: [
          const SizedBox(height: 100,),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Have a Healthy Day",
              style: TextStyle( fontSize: 32),
              textAlign: TextAlign.center,
            ),
          ),
          const Icon(
            Icons.health_and_safety,
            size: 100,
            color: Colors.green,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 0,
            ),
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
              bottom: 20
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),

              ),
              color: Colors.black45,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                    color: Colors.blue,
                    child: const Text(
                        "Tip of the day!!!\n",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        letterSpacing: 2,
                      ),
                    ),
                ),
              // TODO: This is the place where you should upload the daily tip
              const Text(
                "\t\"Stay active for at least once a hour "
                "during work time.Specialy you are working "
                    "from a computer\"",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  letterSpacing: 2
                ),
              ),
              ],
            )
            ),
          Row(
            children: [
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10)
                  )
                ),
                child:IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                  onPressed: (){
                    // TODO: THis is where previous tip should added
                    print("Clicked previous tip");
                  },
                  highlightColor: Colors.black12,

                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.black12,
                ),
                child:IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  onPressed: (){
                    // TODO: THis is where previous tip should added
                    print("Clicked next tip");
                  },
                  highlightColor: Colors.black12,

                ),
              ),


            ],
          )
        ],
      ),
    );
  }
}
