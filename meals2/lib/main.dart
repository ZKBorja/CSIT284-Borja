import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:google_fonts/google_fonts.dart';
import 'package:meals2/screens/categories.dart';

=======
import 'package:google_fonts/google_fonts.dart';
import 'package:meals2/screens/tabs.dart';
>>>>>>> 87e068f3ddc5377db3d659c590b015f7b3bf7f6b

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
<<<<<<< HEAD
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
=======
    
    seedColor: const Color.fromARGB(255, 16, 185, 129), 
  ),
  textTheme: GoogleFonts.poppinsTextTheme(), 
>>>>>>> 87e068f3ddc5377db3d659c590b015f7b3bf7f6b
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
<<<<<<< HEAD
      home: CategoriesScreen(),
    );
  }
}
=======
      home: const TabsScreen(),
    );
  }
}
>>>>>>> 87e068f3ddc5377db3d659c590b015f7b3bf7f6b
