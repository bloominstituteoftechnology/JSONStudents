# Challenge: JSON Encoding

This challenge allows you to put some of the lessons you learned today into practice in a simple iOS application. 

## Setting up

Create a new iOS single view application and clean it up according to your preferences. 

Build a new Student.swift file based on the following type and conform it to both CustomStringConvertable and Codable. Make sure to implement a custom `description` property that describes your student in a string.

```
struct Student: CustomStringConvertible, Codable {
  let name: String
  let age: Int?
  let cohort: String?
}
```

## Build a Student Manager

Create a StudentManager.swift file. Your `StudentManager` type should be a class, descended from `NSObject`. It will store an array of students in a variable property called `students`.

Add the following skeleton for writing to and reading from your device's file system:

```
let url = URL(fileURLWithPath: NSHomeDirectory())
    .appendingPathComponent("Documents")
    .appendingPathComponent("students.json")
    
func writeToFile() {
}    

func readFromFile() {
}
```

You can write data to a file url with `data.write(to: url)` and read it with `Data(contentsOf: url)`. Both of these calls will throw so you'll need to use do-catch. Further, you can't just write or read an array of `Student`. You need to encode to JSON data before writing and decode after reading.

Implement these methods for your `StudentManager` type.

## Build an Interface

Create an interface that allows you to add one student at a time. Remember, every student must have a name but the student's age and cohort are optional. Add three labels (name, age, cohort) and three fields as well as a Save button that calls the StudentManager's `writeToFile()`. You'll want to create a StudentManager object and connect it to your primary view controller.

Add and implement a print button that prints a list of the students to the console.

Finally, add a view controller `viewWillAppear` method that calls `readFromFile` so your stored data can be printed even after you quit and restart the application.
