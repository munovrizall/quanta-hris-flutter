import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            _buildTextField(label: 'Name', initialValue: 'Mohammad Novrizal'),
            const SizedBox(height: 20),
            _buildTextField(label: 'Email', initialValue: 'rizal@smartcool.id'),
            Row(
              children: [
                Text(
                  'Email belum terverifikasi',
                  style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w800),
                ),
                const SizedBox(width: 4),
                Text(
                  'Verifikasi Disini!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF16BCD2)
                  )
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildTextField(label: 'Phone Number', initialValue: '08123456789'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Save logic here
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, required String initialValue}) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      style: GoogleFonts.rubik(),
    );
  }
}
