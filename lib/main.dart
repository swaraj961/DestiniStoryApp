import 'package:destiniapp/story_brain.dart';
import 'package:flutter/material.dart';

//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

// Step 9 - Create a new storyBrain object from the StoryBrain class.
Storybrain b1 = Storybrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: BoxDecoration(image: DecorationImage(image:AssetImage('images/background.png'),
       fit: BoxFit.fill,
       
        ),
       ),
       padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0), //for button padding 
       constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,

                child: Center(
                  child: Text(
                    // Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                   b1.getstory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                  b1.nextstory(1);

                  },
                  color: Colors.red,
                  child: Text(
                    b1.getchoice1(),
                    //Step 13 - Use the storyBrain to get the text for choice 1.
                  
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: FlatButton(
                  onPressed: () {
                    //Choice 2 made by user.
                    b1.nextstory(2);
                    // Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                  },
                  color: Colors.blue,
                  child: Text(
                    //Step 14 - Use the storyBrain to get the text for choice 1.
                    b1.getchoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
