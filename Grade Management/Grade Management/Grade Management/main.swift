//
//  main.swift
//  Grade Management
//
//  Created by StudentAM on 1/29/24.
//

import Foundation
import CSV

var studentName: String = ""
var grade: [Int] = []

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
            // Assuming each row represents data with multiple columns (grades)
            let studentName = row[0]
            
            // Accessing grades starting from the second column (index 1)
            for i in 1..<row.count {
                if let grade = Int(row[i]) {
                    print("Student: \(studentName), Grade \(i): \(grade)")
                    
                    // You can perform further processing or store the data as needed
                } else {
                    print("Error converting grade to integer for \(studentName), Grade \(i)")
                }
            }
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
        for i in studentName.indices
        {
//            if input2 == studentName[i]
//            {
//                
//            }
            if input2 != studentName
            {
                
            }
        }
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
