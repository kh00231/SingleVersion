import 'package:flutter/material.dart';
import 'package:singleversion/view/system/credit_system_view.dart';

import 'login/login_view.dart';

int _currentIndex =1;

class NavigationMenuView extends StatefulWidget {
  const NavigationMenuView({super.key});

  @override
  State<NavigationMenuView> createState() => _NavigationMenuViewState();
}

class _NavigationMenuViewState extends State<NavigationMenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Login"),
          NavigationDestination(icon: Icon(Icons.add_chart), label: "Credit"),
          NavigationDestination(icon: Icon(Icons.account_box), label: "Commencement"),
          NavigationDestination(icon: Icon(Icons.phone), label: "Collection"),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    switch(_currentIndex) {
      case 0:
        return const LoginView();

      case 1:
        return const CreditSystemView();

      case 2:
        return const CreditSystemView();

      default:
        return const CreditSystemView();

    }
  }
}
