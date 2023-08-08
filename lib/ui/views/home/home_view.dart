import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: viewModel.getSelectedScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.selectedIndex,
        onTap: viewModel.onNavigationItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Skills'),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Certificate'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor:kcPrimaryColor,
        unselectedItemColor: kcLightGrey,
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
