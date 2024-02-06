//
//  main.swift
//  Grade Management
//
//  Created by StudentAM on 1/29/24.
//

import Foundation
import CSV

var studentNames: [String] = []
var grade: [[Int]] = []

func startScreen()
{
    do {
        let stream = InputStream(fileAtPath: "/Users/studentam/desktop/Grades.csv")
        
        guard let csvStream = stream else {
            print("Failed to open CSV file.")
            return
        }
        
        let csv = try CSVReader(stream: csvStream)
        
        while let row = csv.next() {
            studentNames.append(row[0])
            var studentGrades: [Int] = []
            for i in 1..<row.count {
                if let grade1 = Int(row[i]) {
                    studentGrades.append(grade1)
//                    print("Student: \(studentNames), Grade \(i): \(grade1)")
                } else {
//                    print("Error converting grade to integer for \(studentNames), Grade \(i)")
                }
            }
            grade.append(studentGrades)
        }
    } catch {
        print("Error reading CSV file: \(error)")
    }
    
    print ("Welcome, what would you like to do")
    print ("1. Display grade of a single student")
    print ("2. Display all grades for a student")
    print ("3. Display all grades of ALL students")
    print ("4. Find the average grade of the class")
    print ("5. Find the average grade of an assignment")
    print ("6. Find the lowest grade in the class")
    print ("7. Find the highest grade of the class")
    print ("8. Filter students by grade range")
    print ("9. Quit")
    
    if let input1 = readLine()
    {
        if input1 == "1"
        {
            singleStudentsGrade()
        }
        if input1 == "2"
        {
            singleStudentsGrades()
        }
        if input1 == "3"
        {
            allStudentsGrades()
        }
        if input1 == "4"
        {
            averageOfClass()
        }
        if input1 == "5"
        {
            averageOnAssignment()
        }
        if input1 == "6"
        {
            lowestGrade()
        }
        if input1 == "7"
        {
            highestGrade()
        }
        if input1 == "8"
        {
            filter()
        }
        if input1 == "9"
        {
            print("have a good day!")
            return()
        }else
        {
            print("Error")
            startScreen()
        }
    }
}

func singleStudentsGrade() {
    print (studentNames)
    print (grade)
    print("Enter the name of the student:")
    if let inputName = readLine() {
        for i in studentNames.indices
        {
            if inputName == studentNames[i]
            {
                print("\(inputName) found")
                print("what grade would you like to see (1-10)?")
                if let input2 = Int(readLine()!)
                {
                    print (grade[i][input2 - 1])
                    sleep(3)
                    startScreen()
                }
            }
        }
        print("that name is not available or does not exist.")
        startScreen()
    }
}


func singleStudentsGrades()
{
    
    print("Enter the name of the student:")
    if let inputName = readLine() {
        for i in studentNames.indices
        {
            if inputName == studentNames[i]
            {
                print("\(inputName) found")
                print("name:\(studentNames[i]) Grades:\(grade[i])")
                sleep(2)
                startScreen()
            }
        }
        print("that name is not available or does not exist.")
        startScreen()
        
    }
}

func allStudentsGrades()
{
    print("here are all the grades:")
    sleep(1)
    for i in studentNames.indices
    {
        print("Name:\(studentNames[i]) Grades: \(grade[i])")
    }
    sleep(2)
    startScreen()
}

func averageOfClass()
{
    var average = 0
    var currentNum = 0
    for i in grade.indices
    {
        for j in grade.indices
        {
            currentNum += grade[i][j]
        }
        currentNum = currentNum / grade[i].count
        average += currentNum
        currentNum = 0
        if i == grade.count
        {
            average /= grade.count
            print ("the average is:\(average)")
            average = 0
            sleep(1)
            startScreen()
        }
    }
}

func averageOnAssignment()
{
    var current2 = 0
    print("what assignment would you like to see the average of (1-10)?")
    if let input1 = Int(readLine()!)
    {
        for i in grade.indices
        {
            current2 += grade[i][input1]
        }
        current2 /= studentNames.count
        print("the average of that assignement is: \(current2)")
        current2 = 0
        sleep(2)
        startScreen()
    }
}

func lowestGrade()
{
    var grades2: [Int] = []
    var current2 = 0
    for i in studentNames.indices
    {
        for j in studentNames.indices
        {
            current2 += grade[i][j]
        }
        current2 /= studentNames.count
        grades2.append(current2)
        current2 = 0
    }
    if let lowest = grades2.min(), let index = grades2.firstIndex(of: lowest)
    {
        print ("the lowest grade is by: \(studentNames[index]) with a grade of: \(lowest)")
    }
//    if let minNumber = numbers.min(), let index = numbers.firstIndex(of: minNumber) {
}

func highestGrade()
{
    var grades2: [Int] = []
    var current2 = 0
    for i in studentNames.indices
    {
        for j in studentNames.indices
        {
            current2 += grade[i][j]
        }
        current2 /= studentNames.count
        grades2.append(current2)
        current2 = 0
    }
    if let highest = grades2.max(), let index = grades2.firstIndex(of: highest)
    {
        print ("the highest grade is by: \(studentNames[index]) with a grade of: \(highest)")
    }
}

func filter()
{
    print("Enter the low range you would like to use?")
    if let lowRange = readLine()
    {
        
    }
    print("Enter the high range you would like to use?")
    if let highRange = readLine()
    {
        
    }
}

startScreen()
