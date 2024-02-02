//
//  main.swift
//  Grade Management
//
//  Created by StudentAM on 1/29/24.
//

import Foundation
import CSV

var studentName: [String] = []
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
            studentName.append(row[0])
            var studentGrades: [Int] = []
            for i in 1..<row.count {
                if let grade1 = Int(row[i]) {
                    studentGrades.append(grade1)
                    print("Student: \(studentName), Grade \(i): \(grade1)")
                } else {
                    print("Error converting grade to integer for \(studentName), Grade \(i)")
                }
            }
            grade.append(studentGrades)
        }
    } catch {
        print("Error reading CSV file: \(error)")
    }
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
        }else
        {
            print("Error")
            startScreen()
        }
    }

func singleStudentsGrade()
{
    print("what students grade do you want to see?")
    if var input2 = readLine()
    {
        
    }
}

func singleStudentsGrades()
{
    
}

func allStudentsGrades()
{
    
}

func averageOfClass()
{
    
}

func averageOnAssignment()
{
    
}

func lowestGrade()
{
    
}

func highestGrade()
{
    
}

func filter()
{
    
}

startScreen()
