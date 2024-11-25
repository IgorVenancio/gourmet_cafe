import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://yrfvtwccskyfymoifagz.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlyZnZ0d2Njc2t5Znltb2lmYWd6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzA4NzgzNjcsImV4cCI6MTk4NjQ1NDM2N30.OHw80anuYo8i2WPDYdmD_0Xxnh_6EkVgrvVmSHeYNAE';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
