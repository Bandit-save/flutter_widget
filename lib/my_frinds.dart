import 'package:flutter/material.dart';

class MyFrinds extends StatelessWidget {
  const MyFrinds({super.key});

  @override
  Widget build(BuildContext context) {
    var friends = [
      {
        'name': 'ศุภวัฒน์ กันทาธรรม',
        'height': '181 cm',
        'weight': '98 kg',
        'hobby': 'ร้องเพลง',
        'Nickname': 'ติวเตอร์',
        
      },
      {
        'name': 'ชาคริต อสังกรุณา',
        'height': '180 cm',
        'weight': '75 kg',
        'hobby': 'เล่นเกม',
        'Nickname': 'บลู',
        
      },
      {
        'name': 'ภวัต วรรณตรง',
        'height': '165 cm',
        'weight': '45 kg',
        'hobby': 'ส่องสาว',
        'Nickname': 'เปา',
        
           
      },
      {
        'name': 'พีรพัฒน์ แก้วธานี',
        'height': '175 cm',
        'weight': '62 kg',
        'hobby': 'ขี่ม้ายิงปืน',
        'Nickname': 'โฟร์ค',
        
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Friends'),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          itemCount: friends.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: Color.fromARGB(255, 235, 18, 180),
                  width: 1,
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.person, size: 40), // ไอคอนคน
                iconColor: const Color.fromARGB(255, 17, 31, 235), // สีของไอคอน
                title: Text(friends[index]['name']!),
                subtitle: Text('ชื่อเล่น: ${friends[index]['Nickname']}'),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () => _showFriendDetails(
                      context, friends[index]), // เมื่อกดลูกศรแสดง dialog
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสำหรับแสดง AlertDialog พร้อมรูปและข้อมูลเพื่อน
  void _showFriendDetails(BuildContext context, Map<String, String> MyFriends) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(MyFriends['name']!), // ชื่อเพื่อนในหัวข้อ
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
    
           const SizedBox(height: 10),
            Text('ส่วนสูง: ${MyFriends['height']}'),
            Text('น้ำหนัก: ${MyFriends['weight']}'),
            Text('สิ่งที่ชอบ: ${MyFriends['hobby']}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // ปิด dialog
            child: const Text('ปิด'),
          ),
        ],
      ),
    );
  }
}