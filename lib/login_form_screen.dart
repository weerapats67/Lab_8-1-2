import 'package:flutter/material.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Controllers
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  // ข้อมูลที่บันทึก
  String _savedEmail = '';
  String _savedPassword = '';

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ฟอร์มล็อกอิน'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              // ข้อความด้านบน
              const Text(
                'กรุณาป้อนข้อมูลเข้าสู่ระบบ:',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),

              // =========================
              // Email
              // =========================
              TextFormField(
                controller: _emailController,

                decoration: const InputDecoration(
                  labelText: 'อีเมล',
                  hintText: 'you@example.com',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),

                keyboardType: TextInputType.emailAddress,

                // Email Validator
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนอีเมลของคุณ';
                  }

                  if (!value.contains('@') || !value.contains('.')) {
                    return 'กรุณาป้อนที่อยู่อีเมลที่ถูกต้อง';
                  }

                  return null;
                },

                // บันทึก Email
                onSaved: (value) {
                  if (value != null) {
                    _savedEmail = value;
                  }
                },
              ),

              const SizedBox(height: 15),

              // =========================
              // Password
              // =========================
              TextFormField(
                controller: _passwordController,

                decoration: const InputDecoration(
                  labelText: 'รหัสผ่าน',
                  hintText: 'ป้อนรหัสผ่านของคุณ',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),

                obscureText: true,

                // Password Validator
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนรหัสผ่านของคุณ';
                  }

                  if (value.length < 6) {
                    return 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร';
                  }

                  return null;
                },

                // บันทึก Password
                onSaved: (value) {
                  if (value != null) {
                    _savedPassword = value;
                  }
                },
              ),

              const SizedBox(height: 30),

              // =========================
              // ปุ่ม Login
              // =========================
              ElevatedButton(
                onPressed: () {
                  // ตรวจสอบ Form
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {

                    // บันทึกข้อมูลจาก onSaved
                    _formKey.currentState!.save();

                    // แสดงข้อมูลที่บันทึก
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'ล็อกอินสำเร็จ! อีเมล: $_savedEmail, '
                          'รหัสผ่าน: $_savedPassword',
                        ),
                      ),
                    );

                    // แสดงใน Debug Console
                    print('อีเมลที่บันทึก: $_savedEmail');
                    print('รหัสผ่านที่บันทึก: $_savedPassword');

                  } else {
                    print('ฟอร์มไม่ถูกต้อง');
                  }
                },

                child: const Text('ล็อกอิน'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
