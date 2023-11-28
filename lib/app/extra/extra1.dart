import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Stepper Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStepIndicator(0, Icons.home),
                _buildUnderscore(),
                _buildStepIndicator(1, Icons.person),
                _buildUnderscore(),
                _buildStepIndicator(2, Icons.visibility),
                _buildUnderscore(),
                _buildStepIndicator(3, Icons.mail),
                _buildUnderscore(),
                _buildNextButton(),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBackButton(),
                _buildNextStepButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepIndicator(int step, IconData icon) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentStep >= step ? Colors.green : Colors.grey,
      ),
      child: _currentStep > step
          ? Icon(
        Icons.check,
        color: Colors.white,
      )
          : Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  Widget _buildUnderscore() {
    return Container(
      width: 20.0,
      height: 2.0,
      color: Colors.grey,
    );
  }

  Widget _buildNextButton() {
    return GestureDetector(
      onTap: () {
        // Navigate to the next page when the button is clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            switch (_currentStep) {
              case 0:
                return HomePage();
              case 1:
                return PersonPage();
              case 2:
                return VisionPage();
              case 3:
                return MailPage();
              default:
                return HomePage();
            }
          }),
        );
      },
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return ElevatedButton(
      onPressed: () {
        // Move to the previous step
        setState(() {
          _currentStep = (_currentStep - 1).clamp(0, 3);
        });
      },
      child: Text('Back'),
    );
  }

  Widget _buildNextStepButton() {
    return ElevatedButton(
      onPressed: () {
        // Move to the next step and update the tick marks
        setState(() {
          _currentStep = (_currentStep + 1).clamp(0, 3);
        });
      },
      child: Text('Next Step'),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('This is the Home Page!'),
      ),
    );
  }
}

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person Page'),
      ),
      body: Center(
        child: Text('This is the Person Page!'),
      ),
    );
  }
}

class VisionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vision Page'),
      ),
      body: Center(
        child: Text('This is the Vision Page!'),
      ),
    );
  }
}

class MailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail Page'),
      ),
      body: Center(
        child: Text('This is the Mail Page!'),
      ),
    );
  }
}
