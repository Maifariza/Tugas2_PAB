import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/registration_provider.dart';

class RegistrantListPage extends StatelessWidget {
  const RegistrantListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<RegistrationProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Peserta (${provider.count})',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFFEC407A),
        centerTitle: true,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Consumer<RegistrationProvider>(
        builder: (context, provider, child) {
          if (provider.registrants.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people_outline, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Belum ada pendaftar',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Daftar sekarang di halaman registrasi!',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: provider.registrants.length,
            itemBuilder: (context, index) {
              final registrant = provider.registrants[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(
                color: Color(0xFFF8BBD0),
                width: 1,
              ),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),

              leading: CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xFFEC407A),
                child: Text(
                  registrant.name[0].toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              title: Text(
                registrant.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    registrant.programStudi,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    registrant.email,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                tooltip: "Hapus Peserta",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      icon: const Icon(
                        Icons.delete_outline,
                      color: Colors.red,
                      size: 40,
                    ),
                    title: const Text(
                      'Hapus Pendaftar?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: Text(
                      'Yakin ingin menghapus ${registrant.name}?',
                      style: const TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    actionsPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(ctx),
                        child: const Text(
                          'Batal',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          provider.removeRegistrant(registrant.id);
                          Navigator.pop(ctx);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                children: [
                                  const Icon(Icons.check_circle, color: Colors.white),
                                  const SizedBox(width: 8),
                                  Text('${registrant.name} berhasil dihapus'),
                                ],
                              ),
                              backgroundColor: const Color(0xFFEC407A),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                        icon: const Icon(Icons.delete),
                        label: const Text('Hapus'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 50, 101),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                  );
                },
              ),

              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: registrant.id,
                );
              },
            ),
          );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: const Color(0xFFEC407A),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}