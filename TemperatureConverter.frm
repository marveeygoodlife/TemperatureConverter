VERSION 5.00
Begin VB.Form frmConverter 
   BackColor       =   &H80000015&
   Caption         =   "Group-Z-Exercise2"
   ClientHeight    =   8565
   ClientLeft      =   120
   ClientTop       =   615
   ClientWidth     =   15645
   BeginProperty Font 
      Name            =   "Arial Narrow"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H8000000D&
   LinkTopic       =   "Form1"
   ScaleHeight     =   12225
   ScaleWidth      =   22800
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtCelsius 
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Left            =   9720
      TabIndex        =   6
      Top             =   4680
      Width           =   2175
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   750
      Left            =   9720
      TabIndex        =   5
      ToolTipText     =   "Click to clear Input Boxes"
      Top             =   3240
      Width           =   2175
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "Convert"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   750
      Left            =   5640
      TabIndex        =   4
      ToolTipText     =   "Click to convert Temperature"
      Top             =   3240
      Width           =   3015
   End
   Begin VB.TextBox txtFahrenheit 
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Left            =   9840
      TabIndex        =   2
      Text            =   "Enter Fahrenheit"
      Top             =   1920
      Width           =   2000
   End
   Begin VB.Label lblCelsius 
      Caption         =   "Temperature In Celcius:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5640
      TabIndex        =   3
      Top             =   4680
      Width           =   3015
   End
   Begin VB.Label lblFahrenheit 
      Caption         =   "Enter Temperature in Fahrenheit:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5640
      TabIndex        =   1
      Top             =   1920
      Width           =   3975
   End
   Begin VB.Label lblHeader 
      Alignment       =   2  'Center
      Caption         =   "Temperature Converter"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5880
      TabIndex        =   0
      Top             =   360
      Width           =   5895
   End
End
Attribute VB_Name = "frmConverter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




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



Private Sub Form_Load()

End Sub


