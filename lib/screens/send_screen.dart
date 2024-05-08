import 'package:flutter/material.dart';


class SendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Send Crypto Coins'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SendForm(),
        ),
      ),
    );
  }
}

class SendForm extends StatefulWidget {
  @override
  _SendFormState createState() => _SendFormState();
}

class _SendFormState extends State<SendForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _addressController,
            decoration: InputDecoration(
            labelText: 'Recipient Address',
           
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            )
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the recipient address';
              }
              // Add more validation logic here if needed
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _amountController,
            decoration: InputDecoration(

              labelText: 'Amount'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the amount';
              }
              // Add more validation logic here if needed
              return null;
            },
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process sending of crypto coins here
                String recipientAddress = _addressController.text;
                double amount = double.parse(_amountController.text);

                // Example: Send coins using a hypothetical function
                sendCoins(recipientAddress, amount);

                // Show success message or navigate to success screen
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Coins sent successfully')),
                );
              }
            },
            child: Text('Send Coins'),
          ),
        ],
      ),
    );
  }

  // Function to send coins (replace with actual implementation)
  void sendCoins(String recipientAddress, double amount) {
    // Add logic to send coins to the recipient's address
    // This could involve integration with a cryptocurrency wallet or service
    print('Sending $amount coins to $recipientAddress');
    // Implement actual sending logic here
  }

  @override
  void dispose() {
    _addressController.dispose();
    _amountController.dispose();
    super.dispose();
  }
}
