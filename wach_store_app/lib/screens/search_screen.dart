import 'package:flutter/material.dart';
import 'package:wach_store_app/dataset/wach_dataset.dart';
import 'package:wach_store_app/global/global.dart';
import 'package:wach_store_app/models/wach_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key, required this.wach}) : super(key: key);
  final WachProduct wach;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController editingController = TextEditingController();
  List<WachProduct> filteredWachList = [];

  void searchWach(String query) {
    filteredWachList = WachProductList.where((wach) {
      final name = wach.name.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    filteredWachList = WachProductList;
    for (var wach in WachDataSet) {
      WachProductList.add(WachProduct.fromJson(wach));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                onChanged: searchWach,
                controller: editingController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      editingController.clear();
                      searchWach('');
                    },
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredWachList.length,
                  itemBuilder: (context, index) {
                    final wach = filteredWachList[index];
                    return ListTile(
                      title: Text(wach.name),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
