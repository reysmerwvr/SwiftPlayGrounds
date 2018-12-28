import UIKit

// ********** Declaring Constants and Variables **********

/*
Constants and variables must be declared before they’re used. You declare
constants with the let keyword and variables with the var keyword. Here’s an
example of how constants and variables can be used to track the number of login
attempts a user has made:
 */

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

/*
 “Declare a new constant called maximumNumberOfLoginAttempts, and give it a
 value of 10. Then, declare a new variable called currentLoginAttempt,
 and give it an initial value of 0.”
*/

/* You can declare multiple constants or multiple variables on a single line,
separated by commas: */

var x = 0.0, y = 0.0, z = 0.0

// ********** Type Annotations **********

/* This example provides a type annotation for a variable called welcomeMessage,
 to indicate that the variable can store String values: */

//var welcomeMessage: String
//welcomeMessage = "Hello"

/* You can define multiple related variables of the same type on a single line,
 separated by commas, with a single type annotation after the final variable name:
*/

//var red, green, blue: Double

// ********** Naming Constants and Variables **********

/* Constant and variable names can contain almost any character, including
 Unicode characters: */

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

/*
 Constant and variable names can’t contain whitespace characters, mathematical
 symbols, arrows, private-use Unicode scalar values, or line- and box-drawing
 characters. Nor can they begin with a number, although numbers may be included
 elsewhere within the name.
*/

/*
 You can change the value of an existing variable to another value of a
 compatible type. In this example, the value of friendlyWelcome is changed
 from "Hello!" to "Bonjour!":
*/

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

/*
 Unlike a variable, the value of a constant can’t be changed after it’s set.
 Attempting to do so is reported as an error when your code is compiled:
*/

let languageName = "Swift"
// languageName = "Swift++"
// This is a compile-time error: languageName cannot be changed.

// ********** Printing Constants and Variables **********

/* You can print the current value of a constant or variable with
the print(_:separator:terminator:) function: */
print(friendlyWelcome)
print("The current value of friendlyWelcome is \(friendlyWelcome)")
// Prints "The current value of friendlyWelcome is Bonjour!"

// ********** Semicolons **********
let cat = "🐱"; print(cat)

// ********** Integer Bounds **********
let minValue = UInt8.min; print(minValue)  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max; print(maxValue)  // maxValue is equal to 255, and is of type UInt8

/*
 In most cases, you don’t need to pick a specific size of integer to use in your code.
 Swift provides an additional integer type, Int, which has the same size as the
 current platform’s native word size:
 On a 32-bit platform, Int is the same size as Int32.
 On a 64-bit platform, Int is the same size as Int64.
*/

// ********** Floating-Point Numbers **********

/*
 Floating-point numbers are numbers with a fractional component, such as
 3.14159, 0.1, and -273.15. Floating-point types can represent a much wider
 range of values than integer types, and can store numbers that are much larger
 or smaller than can be stored in an Int. Swift provides two signed
 floating-point number types:
 
 Double represents a 64-bit floating-point number.
 Float represents a 32-bit floating-point number.
 
 Double has a precision of at least 15 decimal digits, whereas the precision
 of Float can be as little as 6 decimal digits.
*/

// ********** Type Safety and Type Inference **********

/*
Swift is a type-safe language. A type safe language encourages you to be clear
about the types of values your code can work with. If part of your code requires
a String, you can’t pass it an Int by mistake.
*/
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int
let pi = 3.14159
// pi is inferred to be of type Double
// Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.
let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

// ********** Numeric Literals **********
/*
Integer literals can be written as:

A decimal number, with no prefix
A binary number, with a 0b prefix
An octal number, with a 0o prefix
A hexadecimal number, with a 0x prefix
All of these integer literals have a decimal value of 17:
*/
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/*
 Numeric literals can contain extra formatting to make them easier to read.
 Both integers and floats can be padded with extra zeros and can contain
 underscores to help with readability. Neither type of formatting affects
 the underlying value of the literal:
*/

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// ********** Numeric Type Conversion **********
//let cannotBeNegative: UInt8 = -1
// UInt8 cannot store negative numbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1
// Int8 cannot store a number larger than its maximum value,
// and so this will also report an error

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// ********** Integer and Floating-Point Conversion **********
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pii = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double
/*
 Here, the value of the constant three is used to create a new value of type
 Double, so that both sides of the addition are of the same type.
 Without this conversion in place, the addition would not be allowed.
*/

let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

// ********** Type Aliases **********
/*
 Type aliases define an alternative name for an existing type.
 You define type aliases with the typealias keyword.
 
 Type aliases are useful when you want to refer to an existing type by a name
 that is contextually more appropriate, such as when working with data of a
 specific size from an external source:
*/
typealias AudioSample = UInt16
/*
 Once you define a type alias, you can use the alias anywhere you might use the
 original name:
*/
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

// ********** Booleans **********

/*
 Swift has a basic Boolean type, called Bool. Boolean values are referred to
 as logical, because they can only ever be true or false.
 Swift provides two Boolean constant values, true and false:
*/
let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

// ********** Tuples **********

/*
 Tuples group multiple values into a single compound value.
 The values within a tuple can be of any type and don’t have to be of the same type as each other.
*/
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"
print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"
// You can name the individual elements in a tuple when the tuple is defined:
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"

// ********** Optionals **********

/*
 You use optionals in situations where a value may be absent.
 An optional represents two possibilities: Either there is a value, and you can
 unwrap the optional to access that value, or there isn’t a value at all.
 
 The concept of optionals doesn’t exist in C or Objective-C. The nearest thing
 in Objective-C is the ability to return nil from a method that would otherwise
 return an object, with nil meaning “the absence of a valid object.” However,
 this only works for objects—it doesn’t work for structures, basic C types, or
 enumeration values. For these types, Objective-C methods typically return a
 special value (such as NSNotFound) to indicate the absence of a value. This
 approach assumes that the method’s caller knows there’s a special value to test
 against and remembers to check for it. Swift’s optionals let you indicate the
 absence of a value for any type at all, without the need for special constants.
 
 The example below uses the initializer to try to convert a String into an Int:
*/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
/*
 You can’t use nil with nonoptional constants and variables.
 If a constant or variable in your code needs to work with the absence of a
 value under certain conditions, always declare it as an optional value of the
 appropriate type.
 If you define an optional variable without providing a default value,
 the variable is automatically set to nil for you:
 Swift’s nil isn’t the same as nil in Objective-C. In Objective-C, nil is a
 pointer to a nonexistent object. In Swift, nil isn’t a pointer—it’s the absence
 of a value of a certain type. Optionals of any type can be set to nil, not
 just object types.
*/
var surveyAnswer: String?
// surveyAnswer is automatically set to nil

// ********** If Statements and Forced Unwrapping **********

/*
 You can use an if statement to find out whether an optional contains a
 value by comparing the optional against nil. You perform this comparison
 with the “equal to” operator (==) or the “not equal to” operator (!=).
*/
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123."

// ********** Optional Binding **********
/*
 You use optional binding to find out whether an optional contains a value,
 and if so, to make that value available as a temporary constant or variable.
 Optional binding can be used with if and while statements to check for a value
 inside an optional, and to extract that value into a constant or variable,
 as part of a single action.
 
 if let constantName = someOptional {
    statements
 }
*/
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"
/*
 This code can be read as:
 
 “If the optional Int returned by Int(possibleNumber) contains a value, set a
 new constant called actualNumber to the value contained in the optional.”
*/
if let firstNumber = Int("4"), let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100"

// ********** Implicitly Unwrapped Optionals **********

/*
 An implicitly unwrapped optional is a normal optional behind the scenes,
 but can also be used like a nonoptional value, without the need to unwrap the
 optional value each time it’s accessed. The following example shows the
 difference in behavior between an optional string and an implicitly unwrapped
 optional string when accessing their wrapped value as an explicit String:
*/
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

/*
 If an implicitly unwrapped optional is nil and you try to access its wrapped
 value, you’ll trigger a runtime error. The result is exactly the same as if you
 place an exclamation mark after a normal optional that doesn’t contain a value.
*/

if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string."

/*
 You can also use an implicitly unwrapped optional with optional binding,
 to check and unwrap its value in a single statement:
*/

if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."

// ********** Error Handling **********

// You use error handling to respond to error conditions your program may encounter during execution.

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

func makeASandwich() throws {
    // ...
}

// ********** Assertions and Preconditions **********
/*
 The difference between assertions and preconditions is in when they’re checked:
 Assertions are checked only in debug builds, but preconditions are checked in
 both debug and production builds. In production builds, the condition inside an
 assertion isn’t evaluated. This means you can use as many assertions as
 you want during your development process, without impacting performance in
 production.
*/
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0.
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

let index = -3
// In the implementation of a subscript...
precondition(index > 0, "Index must be greater than zero.")
