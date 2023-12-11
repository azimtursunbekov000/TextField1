import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TextField',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                'Example',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: TextField(
            onChanged: (value) {
              print("value = $value");
            },

            // keyboardType: TextInputType.numberWithOptions(decimal: true),
            // style: TextStyle(fontSize: 30),
            // textAlign: TextAlign.end,
            // readOnly: true,

            // obscureText: true,
            // obscuringCharacter: '?',

            // maxLines: 2,
            maxLength: 5,
            decoration: InputDecoration(
              // filled: true, fillColor: Colors.blue,
              // contentPadding: EdgeInsets.only(left: 50),
              suffix: const Icon(Icons.delete),
              prefixText: "+996",
              // prefix: Icon(Icons.access_alarms),
              // prefixIcon: Icon(Icons.access_alarms),
              // helperText: "Фамилия",
              hintText: " Фамилия",
              labelText: "labelText",
              // counterText: "0/14",

              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 5,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "TextField",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                const BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          RichText(
            text: TextSpan(
              text: "Dont have an account?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Sign up",
                  style: TextStyle(
                    color: Colors.blue[300],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
