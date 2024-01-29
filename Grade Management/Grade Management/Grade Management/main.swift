//
//  main.swift
//  Grade Management
//
//  Created by StudentAM on 1/29/24.
//

import Foundation
import CSV

do
{
    let stream = InputStream(fileAtPath: "/Users/studentam/desktop/Grades.csv")
    let csv = try CSVReader(stream: stream!)
    while let row = csv.next()
    {
        print(row)
    }
}
catch
{
    print("There was an error!")
}


func startScreen ()
{
    
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
            return
        }else
        {
            print("Error")
            startScreen()
        }
    }
}

func singleStudentsGrade()
{
    
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
