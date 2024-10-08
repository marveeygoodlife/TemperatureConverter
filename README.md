# TEMPERATURE CONVERTER


 This is a basic application that calculates temperature, user input Fahrenheit, the inputs get validated and users get celsius as answer.
This code is run on VISUAL BASIC 6


## Table of Contents

1. [AUTHOR](#marvellous-ediagbonya)
1. [PROBLEM STATEMENT](#problem-statement)
2. [PROBLEM SPECIFICATION](#problem-specification)
3. [ANALYSIS](#analysis)
4. [DESIGN](#design)
5. [IMPLEMENTATION](#implementation)
5. [RESULT](#result)

## Marvellous Ediagbonya
Noun  
Abuja  
07015824775  
CIT 104 PRACTICAL  
Monday, 7 October  
## Project Files

The following files are included in this VB6 project:

- **Project File**: `.vbp` - Contains project settings.
- **Form Files**: `.frm` - Define the user interface.
- **Preview file**: `.exe` - Contain application preview.

### Features

- User-friendly interface
- Supports multiple forms
- Easy navigation


## ABOUT PROJECT

## PROBLEM STATEMENT

The goal of this project is to create an application that can convert Fahrenheit to Celsius using the formula for this exercise. The user will insert a temperature in Fahrenheit, and the program will  calculate and display the corresponding temperature in Celsius.
Furthermore, the program will include input validation to make sure the user enters a numeric data, lastly a but to clear inputs and reset form.

## PROBLEM SPECIFICATION

- Input: User will insert temperature in Fahrenheit.  
- Output: An answer will be provided to the user after the conversion.  
- Formula: C = (F−32) × 9 / 5 

Where:  

- C is the temperature in Celsius    
- F is the temperature in Fahrenheit    

- Validation: The program should validate user input.  
- Buttons:  
           - Convert : Button to start the conversion  
           - Clear: Button to clear form and reset input  

## ANALYSIS

- User enter a temperature in Fahrenheit into a Textbox  
- Upon clicking convert, the program will	  
- Validate input to make sure it’s numeric  
- Convert from Fahrenheit to Celsius with the exercise formula.  
- Display the Celsius in a Label.  
- The clear button reset form and allow users to enter new conversions.  

## DESIGN

User Interface:  

- Label1: “Enter temperature in Fahrenheit”  
    - TextBox1: Input field for fahrenheit temperature  
- Label2: “Temperature in Celsius”  
    - Label3: Display Celsius result  
- Button2: Clear the form.  

Program Flow  

- User enter temperature  
   - Users click the “Convert” button.  
- Program validates the input, make the conversion, and display the correct result in label 3  
   - Users can click “Clear” to reset the input fields.  

Flow chart



## IMPLEMENTATION

CODE START HERE
-
```vb6
Private Sub cmdConvert_Click()
    Dim fahrenheit As Double
    Dim celsius As Double

    ' This is a user input validation, it checks if input entered is numeric.
    ' Start If statement
    
    If IsNumeric(txtFahrenheit.Text) Then
        fahrenheit = Val(txtFahrenheit.Text)

        ' If it's numeric, It perform the calculation with our formula
        
        celsius = (fahrenheit - 32) * 5 / 9

        ' Display only the numeric result in the Celsius TextBox
        
        txtCelsius.Text = Format(celsius, "0.00")
    Else
    
        ' It will display an error message if you enter wrong input
        
        MsgBox "Please enter a valid numeric temperature.", vbExclamation, "Invalid Input"
        txtFahrenheit.SetFocus
    End If ' End If statement
End Sub

Private Sub cmdClear_Click()
    ' Clear all input fields and reset focus when the user clicks the Clear button
    txtFahrenheit.Text = ""
  txtCelsius.Text = ""
    txtFahrenheit.SetFocus
End Sub
```
CODE ENDS HERE




## RESULTS

The program successfully converts from Fahrenheit to Celsius and displays the result in the Output label.
If a user enters a wrong input, the program will prompt the user with a message to enter valid inputs.
The user can click the “Clear” button to clear the input fields.  
Example:  
+ Input: 100 Fahrenheit  
    + Output: 37.78 C  
- Input: -40 F  
    + Output: -40 C  
- Input: -90 F  
    + Output: -67.78 C  
- Input: “abc “  
    + Output: Error message “Please Enter a Valid Numeric Temperature”  

# STATEMENT
This is my school practical project.
