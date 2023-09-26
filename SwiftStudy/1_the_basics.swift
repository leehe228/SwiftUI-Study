/* ----------
 * 상수 Constants
 * ---------- */
let maximumNumberOfLoginAttempts = 10

/* ----------
 * 변수 Variables
 * ---------- */
var currentLoginAttempt = 0

// 여러 개의 변수 동시 선언
var x = 0.0, y = 0.0, z = 0.0

// 타입 어노테이션 Type Annotations
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

// 상수와 변수의 이름
// 상수와 변수의 이름은 유니코드 문자를 포함할 수 있습니다.
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"

/* ----------
 * 출력
 * ---------- */
print(friendlyWelcome)
// print(_:separator:terminator:)
print(friendlyWelcome, languageName, separator: ", ", terminator: ".\n")

// 변수를 출력하려면 백슬래시와 괄호를 사용합니다.
print("The current value of friendlyWelcome is \(friendlyWelcome)")

/* ----------
 * 주석 Comments
 * ---------- */
// 이 줄은 주석입니다.
/* 이 줄도 주석입니다. */
/* 이 줄은 여러 줄 주석의 시작입니다.
   이 줄은 여러 줄 주석의 끝입니다. */

// 세미콜론 Semicolons
// 세미콜론은 필수는 아니지만 한 줄로 작성 시 필요합니다.
let cat = "🐱"; print(cat)

/* ----------
 * 정수 Integers
 * ---------- */
// Swift는 8, 16, 32, 64비트의 부호 있는/없는 정수를 지원합니다.
let minValue = UInt8.min // minValue는 0입니다.
let maxValue = UInt8.max // maxValue는 255입니다.
print(minValue, maxValue)

// Int는 플랫폼의 기본 정수형입니다. 일반적으로는 Int를 사용할 것

/* ----------
 * 부동소수점 수 Floating-Point Numbers
 * ---------- */
// Double은 64비트 부동소수점 수, Float은 32비트 부동소수점 수입니다.
// Double은 최소 15자리 정확도, Float은 최소 6자리 정확도를 가집니다. -> Double을 사용할 것

// 타입 안전과 타입 추론 Type Safety and Type Inference
let meaningOfLife = 42
let pi = 3.14159
let anotherPi = 3 + 0.14159
// 추론 시 float보다 double을 선택

/* ----------
 * 숫자 리터럴 Numeric Literals
 * ---------- */
// 0b 0o 0x
let decimalInteger = 17
let binaryInteger = 0b10001 // 17의 2진수 표현입니다.
let octalInteger = 0o21 // 17의 8진수 표현입니다.
let hexadecimalInteger = 0x11 // 17의 16진수 표현입니다.

// 부동 소수점 리터럴은 10진수 혹은 16진수임
// 10진수 지수는 e, 16진수 지수는 p
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1 // 10진수 지수
let hexadecimalDouble = 0xC.3p0 // 16진수 지수

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

/* ----------
 * 숫자 타입 변환 Numeric Type Conversion
 * ---------- */
// let cannotBeNegative: UInt8 = -1
// let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// 정수와 부동소수점 변환은 명시적으로 변환해야 함
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine

// 부동소수점을 정수로 변환하면 소수점 아래를 버림
let integerPi = Int(pi2)
print(integerPi)

/* ----------
 * 타입 별칭 Type Aliases
 * ---------- */
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
print(maxAmplitudeFound)

/* ----------
 * 불리언 Boolean
 * ---------- */
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

let i = 1
// if i { // 오류

if i == 1 {
    print("i == 1")
}

/* ----------
 * 튜플 Tuples
 * ---------- */
let http404Error = (404, "Not Found")

// 튜플 분해
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// 튜플의 일부만 필요한 경우
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

// 튜플 인덱스
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

// 튜플을 정의할 때 각 요소에 이름을 붙일 수 있음
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

/* ----------
 * 옵셔널 Optional
 * ---------- */
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// 옵셔널이 아닌 상수와 변수에는 nil을 할당할 수 없음
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String? // nil을 자동으로 할당

// Swift에서 nil은 특정 타입의 값이 없음을 나타내고 포인터가 아님
// Objective-C에서 nil은 null 포인터

// if 구문과 강제 언래핑 Forced Unwrapping
if convertedNumber != nil { // 값이 포함되어 있는지 확인
    print("convertedNumber contains some integer value.")
}

// 강제 언래핑
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// 값이 없는 옵셔널에 !를 사용하면 오류 발생, 사용 전 반드시 값이 존재하는지 검사해야 함

/* ----------
 * 옵셔널 바인딩 Optional Binding
 * ---------- */
// 옵셔널이 값을 포함하고 있는지 확인하고 값이 있는 경우 해당 값을 임시 상수 또는 변수로 사용
// if와 while 구문에서 추출 가능
if let actualNumber = Int(possibleNumber) {
    // actualNumber에 값이 포함되어 있으면 출력
    // actualNumber는 if 구문 내에서만 사용 가능
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

print("-----")

let myNumber = Int(possibleNumber)
print(type(of: myNumber))
if let myNumber = myNumber {
    print("My number is \(myNumber)")
    print(type(of: myNumber))
}
// if문 밖에서는 다시 Optional을 참조함
print(type(of: myNumber))

print("-----")

// 위와 같은 구문을 짧게 줄여 쓸 수 있음
if let myNumber {
    print("My number is \(myNumber)")
    print(type(of: myNumber))
}
print(type(of: myNumber))

print("-----")

// 옵셔널 바인딩은 상수 대신 변수도 사용 가능
print(myNumber!, type(of: myNumber))
if var myNumber = myNumber {
    // 옵셔널 바인딩 변수는 지역변수임
    myNumber += 1
    print("My number is \(myNumber)")
    print(type(of: myNumber))
}
// 전역 변수는 변하지 않음
print(myNumber!, type(of: myNumber))

print("-----")

// 여러 개의 옵셔널 바인딩
// 하나라도 nil이거나 false로 판단되면 전체 조건이 false, 즉 AND와 같음
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

/* ----------
 * 암시적 언래핑 옵셔널 Implicitly Unwrapped Optionals
 * ---------- */

