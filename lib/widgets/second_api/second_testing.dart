import 'package:app_practice/widgets/second_api/Model_Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProductModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
          elevation: 8,
          backgroundColor: Colors.indigo.shade50,
        ),
        body: Consumer<ProductModel>(
          builder: (BuildContext context, ProductModel value, Widget? child) {
            if(value.responseData.isEmpty){
              value.apiProductCalling();
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: value.responseData.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      print(value.responseData[index]['description']);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.network(
                                value.responseData[index]['image'], width: 150,
                                height: 150)),
                            Text('Id:-${value.responseData[index]['id']}'),
                            Text(
                                'Title:-${value.responseData[index]['title']}'),
                            Text('Category:-${value
                                .responseData[index]['category']}'),
                            Text('Rating:-${value
                                .responseData[index]['rating']['rate']}')
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
