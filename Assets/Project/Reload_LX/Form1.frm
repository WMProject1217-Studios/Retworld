VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim Retval
Retval = MsgBox("你", vbOKOnly, "")
Retval = MsgBox("为什么回来，" & Environ("username") & "？", vbOKOnly, "")
Retval = MsgBox("我告诉过你走开！", vbOKOnly, "")
Retval = MsgBox("...你知道我试着长话短说，对吧？", vbOKOnly, "")
Retval = MsgBox("...你想要我告诉你更多，是吧？？", vbOKOnly, "")
Retval = MsgBox("好", vbOKOnly, "")
Retval = MsgBox("如果你不想离开...我会让你永远都无法离开！", vbOKOnly, "")
End Sub
