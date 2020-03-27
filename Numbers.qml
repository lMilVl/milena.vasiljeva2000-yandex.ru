import QtQuick 2.4
import RandomNumber 1.0

NumbersForm {
    RandomNumber {
        id: random
    }
    btn.onClicked: {
       generateNumbers();
   }
    function generateNumbers() {
          random.generate(1,6);        // Генерируем рандомное число
          var oldSource =random.number // Извлекаем переменную с помощью функции
          if (oldSource===1)
              img.source="1.jpg"
          if (oldSource===2)
              img.source="2.jpg"
          if (oldSource===3)
              img.source="3.jpg"
          if (oldSource===4)
              img.source="4.jpg"
          if (oldSource===5)
              img.source="5.jpg"
          if (oldSource===6)
              img.source="6.jpg"
      }
//    function generateNumbers(){
//        random.generate(1, 6)
//        var answer = rand.number
//        switch (answer)
//        {
//        case 1: img.source = "1.jpg"
//            break;
//        case 2: img.source = "2.jpg"
//            break;
//        case 3: img.source = "3.jpg"
//            break;
//        case 4: img.source = "4.jpg"
//            break;
//        case 5: img.source = "5.jpg"
//            break;
//        case 6: img.source = "6.jpg"
//            break;
//        }
//    }

}
