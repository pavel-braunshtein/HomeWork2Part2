/*

 Домашнє завдання 2. Частина 2.

 Загальні відомості:
    cityNames - константа, яка містить усі необхідні назви міст
                для відображення даних про погоду для кожного міста (оголошена нижче у коді)

    weatherInCities - масив з повною інформацією про погоду для кожного міста,
                      використовується для виводу даних на екран (заповнюеться нижче у коді)

 ЕКРАН 1:
    Вимоги:
        - ЕКРАН 1 має виводити повну інформацію про погоду для кожного міста в одному екземплярі
        у форматі:
             Назва міста:
             t: значення темпераутри у Цельсій
             t: значення температурі у Фаренгейт
             min t: значення мінімальної темпераутри у Цельсій / значення мінімальної темпераутри у Фаренгейт
             max t: значення максимальної темпераутри у Цельсій / значення максимальної темпераутри у Фаренгейт

        наприклад:
             Kyiv:
             t: 25.0 C
             t: 65.00 F
             min t: 22.0 C / 58.00 F
             max t: 27.0 C / 68.00 F


    Поточний результат:
        - ЕКРАН 1 виводить інформацю тільки для міста Київ
        - ЕКРАН 1 виводить дублювання інформації для міста Київ
        - ЕКРАН 1 виводить інформацю про погоду тільки у значенні Кельвін,
          а має виводити у Цельсій та Фаренгейт


 ЕКРАН 2:
    Вимоги:
        - ЕКРАН 2 має виводити інформацію про погоду тільки у Цельсій для кожного міста в одному екземплярі
        у форматі:
            Назва міста:
            t: значення темпераутри у Цельсій

        наприклад:
            Kyiv:
            t: 25.0 C


    Поточний результат:
     - ЕКРАН 2 виводить інформацю тільки для міста Львів
     - ЕКРАН 2 виводить дублювання інформації для міста Львів у кількості білше, ніж кількість заданих міст разом
     - ЕКРАН 2 виводить інформацю про погоду тільки у значенні Кельвін,
       а має виводити у Цельсій


 ЕКРАН 3:
    Вимоги:
        - ЕКРАН 3 має виводити інформацію про погоду тільки у Фаренгейт для кожного міста в одному екземплярі
        у форматі:
            Назва міста:
            t: значення темпераутри у Фаренгейт

        наприклад:
            Kyiv:
            t: 55.0 F


    Поточний результат:
     - ЕКРАН 3 виводить інформацю тільки для одного міста
       і це місто змінюється випадковим чином після кожного запуску програми
     - ЕКРАН 3 виводить дублювання інформації одного випадеового міста у кількості 4 рази
     - ЕКРАН 3 виводить інформацю про погоду тільки у значенні Кельвін,
       а має виводити у Фаренгейт


 Корисна інформація:
 *
   формула конвертації з Кельвіна у Цельсій:
   Тц = Тк - 273.15,
   де Тц - температура у Цельсій
      Тк - температура у Кельвін

 *
   формула конвертації з Кельвіна у Фаренгейт:
   Тф = (Тк * (9.0/5.0) - 459.67),
   де Тф - температура у Фаренгейт
      Тк - температура у Кельвін

 *
   arc4random() % n - генерація випадкового числа у діапазоні від нуля до n,
   де n - крайнє/максимальне значення діапазону

 *
   String(format: "%.nf", DoubleValue) - обмеження виводу чисел після крапки,
   де n - кількість числел для виводу після крапки
   наприклад:
        let somValue: Double = 23.34563725647
        let stringToPrint = String(format: "%.3f", somValue) // 23.345
        23.345 - буде виведено значення: 23 і 3 числа після крапки

 *
    '_' - назва пам'яті, яка не використовується далі у коді (можна назвати заглушка)
    наприклад:
        var _ = index
        або
        let _ = index - значення індексу записується у константу, яка не використвується,
                        може застосовуватися для уникання підсвітки Warnings (попередження,
                        наприклад, оголосили змінну, але не використали далі в коді,
                        Xcode пдсвітить цю строку жовтим кольором)

 */

// резервуємо свій тип для зберігання данних про погоду
// (назва міста, температура, мінімальна температура, максимальна температура)
//typealias Weather = (String, Double, Double, Double)

// константа 0 по Кельвіну без урахування знаку
//let kelvinZero = 273.15

// масив імен міст
//let cityNames = ["Харків", "Київ", "Одеса", "Львів", "Чернігів", "Житомир", "Вінниця"]

// створюємо змінну - пустий масив для зберігання опису погоду для кожного міста
//var weatherInCities: [Weather] = []

// запускаємо цикл для заповнення пустого масиву weatherInCities
// інформацією про погоду для кожної назви міста, вказаних у масиві cityNames
//for index in 1 ..< 4 {
//    let weatherInfo = Weather(
//        city: cityNames[index], // записуємо назву міста
//        temp: Double(arc4random() % 30) + kelvinZero, // генеруємо випадкове значення температури у Кельвінах
//        tempMin: Double(arc4random() % 30) + kelvinZero, // генеруємо випадкове значення температури у Кельвінах
//        tempMax: Double(arc4random() % 30) + kelvinZero // генеруємо випадкове значення температури у Кельвінах
//    )
//    weatherInCities.append(weatherInfo) // додаємо згенеровані погодні значення для поточної назви міста
//}
//
//// Приклад використання генерації числа
//let cityIndex = Int(arc4random() % UInt32(weatherInCities.count - 1))
//
//
//
//// виводимо ПОВНУ інформацію для кожного міста, що є у масиві weatherInCities
//print("---------- ЕКРАН 1 ----------")
//for index in 2 ... 8 {
//    let _ = index
//    let weatherInfo = weatherInCities[0]
//    let city = weatherInfo.0
//    let kelvin = weatherInfo.1
//    let kelvinMin = weatherInfo.2
//    let kelvinMax = weatherInfo.3
//
//    print("\n\(city):")
//    print("t: \(kelvin) C")
//    print("t: \(kelvin) F")
//    print("min t: \(kelvinMin) C / \(kelvinMin) F")
//    print("max t: \(kelvinMax) C / \(kelvinMax) F")
//}
//print("\n-----------------------------")
//print("\n\n")
//
//
//
//// виводимо інформацію про температуру тільки у Цельсій
//// для кожного міста, що є у масиві weatherInCities
//print("---------- ЕКРАН 2 ----------")
//for index in 1 ..< 10 {
//    let _ = index
//    let weatherInfo = weatherInCities[2]
//    let city = weatherInfo.0
//    let kelvin = weatherInfo.1
//    print("\n\(city):\nt: \(String(format: "%.1f", kelvin)) C")
//}
//print("\n-----------------------------")
//print("\n\n")
//
//
//
//// виводимо інформацію про температуру тільки у Фаренгейт
//// для кожного міста, що є у масиві weatherInCities
//print("---------- ЕКРАН 3 ----------")
//for index in 0 ... weatherInCities.count {
//    let _ = index
//    let weatherInfo = weatherInCities[cityIndex]
//    let city = weatherInfo.0
//    let kelvin = weatherInfo.1
//    print("\n\(city):\nt: \(String(format: "%.2f", kelvin)) F")
//}
//print("\n-----------------------------")







import Cocoa
let nf = NumberFormatter()
nf.numberStyle = NumberFormatter.Style.decimal
nf.maximumFractionDigits = 1
let kelvinZero = 273.15
typealias Weather = (String, Double, Double, Double)
let cityNames = ["Харків", "Київ", "Одеса", "Львів", "Чернігів", "Житомир", "Вінниця"]
var weatherInCities: [Weather] = []


for city in cityNames {
    let temp = Double(arc4random() % 30) + kelvinZero
    let tempMin = Double(arc4random() % 30) + kelvinZero
    let tempMax = Double(arc4random() % 30) + kelvinZero
    let weatherInfo = Weather(city: city, temp: temp, tempMin: tempMin, tempMax: tempMax)
    weatherInCities.append(weatherInfo)
}
let cityIndex = Int(arc4random() % UInt32(weatherInCities.count - 1))




print("---------- ЕКРАН 1 ----------")
for weatherInfo in weatherInCities {
    let city = weatherInfo.0
    let kelvin = weatherInfo.1
    let kelvinMin = weatherInfo.2
    let kelvinMax = weatherInfo.3
    let celciusMin = kelvinMin - 273.15
    let celciusMax = kelvinMax - 273.15
    let farenMin = kelvinMin * (9.0/5.0) - 459.67
    let farenMax = kelvinMax * (9.0/5.0) - 459.67
    let celcius = kelvin - 273.15
    let farengheit = kelvin * (9.0/5.0) - 459.67
    
    print("\n\(city):")
    print("t: \(nf.string(from: celcius as NSNumber)!) C")
    print("t: \(nf.string(from: farengheit as NSNumber)!) F")
    print("min t: \(celciusMin) C / \(nf.string(from: farenMin as NSNumber)!) F")
    print("max t: \(celciusMax) C / \(nf.string(from: celciusMax as NSNumber)!) F")
}
print("\n-----------------------------")
print("\n\n")





print("---------- ЕКРАН 2 ----------")
for weatherInfo in weatherInCities {
    let city = weatherInfo.0
    let kelvin = weatherInfo.1
    let celcius = kelvin - 273.15
    print("\n\(city):\nt: \(String(format: "%.1f", celcius)) C")
}
print("\n-----------------------------")
print("\n\n")





print("---------- ЕКРАН 3 ----------")
for weatherInfo in weatherInCities {
    let city = weatherInfo.0
    let kelvin = weatherInfo.1
    let farengheit = kelvin * (9.0/5.0) - 459.67
    print("\n\(city):\nt: \(String(format: "%.1f", farengheit)) F")
}
print("\n-----------------------------")
