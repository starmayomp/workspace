import 'package:flutter/material.dart';
import '../models/user.dart';

class HomeMaterial extends StatefulWidget {
  const HomeMaterial({super.key});

  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'First Name'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  onSaved: (value) =>
                      setState(() => _user.firstName = value.toString()),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Last Name'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                  onSaved: (value) =>
                      setState(() => _user.lastName = value.toString()),
                ),
                TextButton(
                  onPressed: () {
                    print('pressed');
                  },
                  child: const Text('Subscribe'),
                ),
                SwitchListTile(
                  title: const Text('Montly Newsletter'),
                  value: _user.newsletter,
                  onChanged: (bool val) =>
                      setState(() => _user.newsletter = val),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: const Text(
                    'Interest',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Cooking'),
                  value: _user.passions[User.PassionCooking],
                  onChanged: (val) => setState(
                      () => _user.passions[User.PassionCooking] = val as bool),
                ),
                CheckboxListTile(
                  title: const Text('Hiking'),
                  value: _user.passions[User.PassionHiking],
                  onChanged: (val) => setState(
                      () => _user.passions[User.PassionHiking] = val as bool),
                ),
                CheckboxListTile(
                  value: _user.passions[User.PassionTraveling],
                  onChanged: (val) => setState(() =>
                      _user.passions[User.PassionTraveling] = val as bool),
                  title: const Text('Traveling'),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      final form = _formKey.currentState;
                      if (form?.validate() ?? true) {
                        form?.save();
                        _user.save();
                        _showDialog(context);
                      }
                    },
                    child: const Text('save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Saving user input'),
      ),
    );
  }
}
