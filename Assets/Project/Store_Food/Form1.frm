VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Game_Store[type=food]"
   ClientHeight    =   4470
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7455
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4470
   ScaleWidth      =   7455
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command3 
      Caption         =   "扔掉"
      Enabled         =   0   'False
      Height          =   495
      Left            =   5760
      TabIndex        =   5
      Top             =   3840
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "吃掉"
      Height          =   495
      Left            =   3960
      TabIndex        =   4
      Top             =   3840
      Width           =   1695
   End
   Begin VB.PictureBox Picture1 
      Height          =   2895
      Left            =   4080
      ScaleHeight     =   2835
      ScaleWidth      =   3195
      TabIndex        =   2
      Top             =   120
      Width           =   3255
   End
   Begin VB.OptionButton Option1 
      Caption         =   "派蒙 * 1"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3135
   End
   Begin VB.CommandButton Command1 
      Caption         =   "返回"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   3840
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "最好的应急食品"
      Height          =   495
      Left            =   4080
      TabIndex        =   3
      Top             =   3120
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub
