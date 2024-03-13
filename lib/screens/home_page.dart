import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_crud/screens/landing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 28, 48).withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Sample Crud"),
        automaticallyImplyLeading : false,
        centerTitle: true,
          actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              showLogoutConfirmationDialog(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hello, username',
                  style: TextStyle(
                    color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text('Add'),
                  ),
                  const SizedBox(width: 10), 
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text('Edit'),
                  ),
                  const SizedBox(width: 10), 
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text('Delete'),
                  ),
                ],
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Id", style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 10),
                    Text("1", style: Theme.of(context).textTheme.displaySmall),
                    Text("2", style: Theme.of(context).textTheme.displaySmall),
                    Text("3", style: Theme.of(context).textTheme.displaySmall),
                  ],
                ),
                Column(
                  children: [
                    Text("Username", style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 10),
                    Text("John", style: Theme.of(context).textTheme.displaySmall),
                    Text("Doe", style: Theme.of(context).textTheme.displaySmall),
                    Text("Jane", style: Theme.of(context).textTheme.displaySmall)
                  ],
                ),
                Column(
                  children: [
                    Text("Role", style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 10),
                    Text("Super admin", style: Theme.of(context).textTheme.displaySmall),
                    Text("Admin", style: Theme.of(context).textTheme.displaySmall),
                    Text("Management", style: Theme.of(context).textTheme.displaySmall)
                  ],
                )
              ],
            )
          
          ],
        ),
      )
    );
  }
}
void showLogoutConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Center(child: Text('Are you sure you want to log out?', style: TextStyle(fontSize: 20, color: Colors.black))),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel', style: TextStyle(fontSize: 16)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LandingPage())); 
            },
            child: const Text('Logout', style: TextStyle(fontSize: 16, color: Colors.red)),
          ),
        ],
      );
    },
  );
}