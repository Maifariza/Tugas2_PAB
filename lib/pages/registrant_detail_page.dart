import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/registration_provider.dart';

class RegistrantDetailPage extends StatelessWidget {
  const RegistrantDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final registrant = context.read<RegistrationProvider>().getById(id);

    if (registrant == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Not Found')),
        body: const Center(child: Text('Pendaftar tidak ditemukan')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          registrant.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFFEC407A),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),

      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFCE4EC),
                Color(0xFFF8BBD0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [

              CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xFFEC407A),
                child: Text(
                  registrant.name[0].toUpperCase(),
                  style: const TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Text(
                registrant.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                'Terdaftar: ${registrant.formattedRegisteredAt}',
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 24),

              _buildInfoCard(Icons.email, 'Email', registrant.email),
              _buildInfoCard(Icons.person, 'Gender', registrant.gender),
              _buildInfoCard(Icons.school, 'Program Studi', registrant.programStudi),
              _buildInfoCard(
                Icons.cake,
                'Tanggal Lahir',
                '${registrant.formattedDateOfBirth} (${registrant.age} tahun)',
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }

  Widget _buildInfoCard(IconData icon, String label, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Color(0xFFF8BBD0),
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFFEC407A),
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}