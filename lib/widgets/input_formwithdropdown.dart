import 'package:flutter/material.dart';

class InputFormFieldWithDropdown extends StatefulWidget {
  @override
  _InputFormFieldWithDropdownState createState() =>
      _InputFormFieldWithDropdownState();
}

class _InputFormFieldWithDropdownState
    extends State<InputFormFieldWithDropdown> {
  String _selectedItem = '';

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Additional Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Example itemCount
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('User $index'),
                      subtitle: Text('Email: user$index@example.com'),
                      onTap: () {
                        // Handle tapping on a user
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Account Address',
        suffixIcon: IconButton(
          icon: Icon(Icons.arrow_drop_down),
          onPressed: () {
            _showBottomSheet(context);
          },
        ),
        border: OutlineInputBorder(),
      ),
      readOnly: true, // Prevents direct editing of the field
      onTap: () {
        _showBottomSheet(context);
      },
      controller: TextEditingController(text: _selectedItem),
    );
  }
}
