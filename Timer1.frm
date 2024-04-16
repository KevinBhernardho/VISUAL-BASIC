VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0000C000&
   Caption         =   "TIMER "
   ClientHeight    =   4305
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11325
   LinkTopic       =   "Form1"
   ScaleHeight     =   4305
   ScaleWidth      =   11325
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   1800
      Top             =   1800
   End
   Begin VB.CommandButton Command2 
      Caption         =   "STOP"
      Height          =   495
      Left            =   5880
      TabIndex        =   2
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "PLAY"
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000C0&
      Caption         =   "SELAMAT DATANG"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   0
      Top             =   600
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Label1.Left = Label1.Left - 10
If Label1.Left < 0 Then
Label1.Left = Form1.Width
End If
End Sub
