import 'package:custom_ui/screens/dashboard/widgets/item_dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScrenn extends StatelessWidget {
  const DashboardScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Dummy",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 100),
            Text(
              'Rs. 50,500',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.green.shade600,
                ),
                const SizedBox(width: 5),
                Text(
                  'Rs. 2,500',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.green.shade600,
                      ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Today',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.add_circled),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade900,
                    foregroundColor: Colors.white,
                  ),
                  label: const Text("Deposit"),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.file_upload_outlined),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  label: const Text("Withdraw"),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: const [
                    ItemDashboard(
                      title: "Orders History",
                      image: 'order-history.png',
                    ),
                    ItemDashboard(
                      title: "Payment Method",
                      image: 'payment.png',
                    ),
                    ItemDashboard(
                      title: "Tracking",
                      image: 'tracking.png',
                    ),
                    ItemDashboard(
                      title: "Analytics",
                      image: 'analytics.png',
                    ),
                    ItemDashboard(
                      title: "Setting",
                      image: 'settings.png',
                    ),
                    ItemDashboard(
                      title: "Profile",
                      image: 'profile.png',
                    ),
                    ItemDashboard(
                      title: "Contact Us",
                      image: 'contact-us.png',
                    ),
                    ItemDashboard(
                      title: "About Us",
                      image: 'about-us.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
