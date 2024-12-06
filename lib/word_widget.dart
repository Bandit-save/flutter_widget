import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('นายบัณฑิต 1146'),
        backgroundColor: const Color.fromARGB(255, 169, 104, 63),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // เพิ่ม Widget รูปภาพไว้ในส่วนนี้
            Container(
              height: 250,
              width: 300,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("images/พะโล้.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'พะโล้เต้าหู้ไข่แสนอร่อย',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'พะโล้เป็นอาหารที่มีรสชาติกลมกล่อม หวาน เค็ม และหอมเครื่องเทศ ทานคู่กับข้าวสวยร้อนๆ ได้เป็นอย่างดี '
                'ไข่พะโล้ใส่เต้าหู้ นำน้ำตาลทรายแดงเคี่ยวให้ละลาย ในกระทะ ใส่เกลือ ซีอิ๊ว ไก่ หรือ เครื่องปรุงอื่น ๆ ลงไป เคล้าให้ทั่ว พอสีสวยใส่เครื่องเทศ ชิมรสตามใจชอบ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children:  [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '200 Reviews',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children:  [
                      Icon(Icons.timer, color: Colors.green),
                      Text(
                        '30 min',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children:  [
                      Icon(Icons.kitchen, color: Colors.orange),
                      Text(
                        '1 hr',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children:  [
                      Icon(Icons.group, color: Colors.blue),
                      Text(
                        '4-6',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
