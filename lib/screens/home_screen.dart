// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/coffee.dart';
import '../services/coffee_service.dart';
import '../widgets/coffee_card.dart';
import 'coffee_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  late List<Coffee> coffees;
  late List<Coffee> filteredCoffees;
  
  @override
  void initState() {
    super.initState();
    coffees = CoffeeService.getAll();
    filteredCoffees = coffees;
  }
  
  void filterCoffees(String category) {
    setState(() {
      selectedCategory = category;
      if (category == 'All') {
        filteredCoffees = coffees;
      } else {
        filteredCoffees = coffees.where((coffee) => coffee.category == category).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/coffee_banner.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Where Every Cup Is A Masterpiece',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Featured Lattes',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: coffees.where((c) => c.isFeatured).length,
                itemBuilder: (context, index) {
                  final featuredCoffees = coffees.where((c) => c.isFeatured).toList();
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: CoffeeCard(
                      coffee: featuredCoffees[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoffeeDetailScreen(coffee: featuredCoffees[index]),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    'Our Menu',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: CoffeeService.getCategories().length,
                itemBuilder: (context, index) {
                  final category = CoffeeService.getCategories()[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(category),
                      selected: selectedCategory == category,
                      onSelected: (selected) {
                        if (selected) {
                          filterCoffees(category);
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CoffeeCard(
                    coffee: filteredCoffees[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoffeeDetailScreen(coffee: filteredCoffees[index]),
                        ),
                      );
                    },
                  );
                },
                childCount: filteredCoffees.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}