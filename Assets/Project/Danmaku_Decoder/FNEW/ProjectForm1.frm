VERSION 5.00
Begin VB.Form ProjectForm1 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   4800
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4440
   Icon            =   "ProjectForm1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4800
   ScaleWidth      =   4440
   StartUpPosition =   2  '屏幕中心
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer2 
      Left            =   3960
      Top             =   480
   End
   Begin VB.Timer Timer1 
      Left            =   3960
      Top             =   0
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   4320
      Width           =   3615
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   3840
      Width           =   3615
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   3360
      Width           =   3615
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Top             =   2880
      Width           =   3615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   2400
      Width           =   3615
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   1920
      Width           =   3615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   1440
      Width           =   3615
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   3615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   3615
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Microsoft YaHei UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   0
      Width           =   3615
   End
End
Attribute VB_Name = "ProjectForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const HWND_TOPMOST& = -1
Private Const SWP_NOSIZE& = &H1
Private Const SWP_NOMOVE& = &H2
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Const WM_SYSCOMMAND = &H112
Private Const SC_MOVE = &HF010&
Private Const WM_NCLBUTTONDOWN = &HA1
Private Const HTCAPTION = 2
Const GWL_EXSTYLE = (-20)
Const WS_EX_LAYERED = &H80000
Const WS_EX_TRANSPARENT As Long = &H20&
Public temt, retval
Private Declare Function timeGetTime Lib "winmm.dll" () As Long
Public L0, L1, L2, L3, L4, L5, L6, L7, L8, L9
Private Sub Form_Activate()
Call SetWindowPos(Me.hwnd, -1, 0, 0, 0, 0, 3)
Label1.Width = Me.Width
Label1.Left = 0
Label2.Width = Me.Width
Label2.Left = 0
Label3.Width = Me.Width
Label3.Left = 0
Label4.Width = Me.Width
Label4.Left = 0
Label5.Width = Me.Width
Label5.Left = 0
Label6.Width = Me.Width
Label6.Left = 0
Label7.Width = Me.Width
Label7.Left = 0
Label8.Width = Me.Width
Label8.Left = 0
Label9.Width = Me.Width
Label9.Left = 0
Label10.Width = Me.Width
Label10.Left = 0
Timer1.Interval = 94
Timer1.Enabled = True
Timer2.Interval = 900
Timer2.Enabled = True
Me.BackColor = vbRed
End Sub

Private Sub Form_Load()
temt = 0
L0 = 0
L1 = 0
L2 = 0
L3 = 0
L4 = 0
L5 = 0
L6 = 0
L7 = 0
L8 = 0
L9 = 0
'If Label1.Left < Form1.ScaleWidth Then Label1.Left = Label1.Left + 50 Else Label1.Left = 0
Call SetWindowPos(Me.hwnd, -1, 0, 0, 0, 0, 3)
SetWindowLong Me.hwnd, -20, GetWindowLong(Me.hwnd, -20) Or &H80000
SetWindowLong Me.hwnd, GWL_EXSTYLE, GetWindowLong(Me.hwnd, GWL_EXSTYLE) Or WS_EX_LAYERED Or WS_EX_TRANSPARENT
SetLayeredWindowAttributes Me.hwnd, vbRed, 0, 1
End Sub
Public Function DrawDanmaku(LForm As Form, LBox As Label, LColor As ColorConstants, LText As String, LType As Integer)
If L0 = 0 Then
L0 = 1
RunDanmaku 0, LColor, LText
ElseIf L1 = 0 Then
L1 = 1
RunDanmaku 1, LColor, LText
ElseIf L2 = 0 Then
L2 = 1
RunDanmaku 2, LColor, LText
ElseIf L3 = 0 Then
L3 = 1
RunDanmaku 3, LColor, LText
ElseIf L4 = 0 Then
L4 = 1
RunDanmaku 4, LColor, LText
ElseIf L5 = 0 Then
L5 = 1
RunDanmaku 5, LColor, LText
ElseIf L6 = 0 Then
L6 = 1
RunDanmaku 6, LColor, LText
ElseIf L7 = 0 Then
L7 = 1
RunDanmaku 7, LColor, LText
ElseIf L8 = 0 Then
L8 = 1
RunDanmaku 8, LColor, LText
ElseIf L9 = 0 Then
L9 = 1
RunDanmaku 9, LColor, LText
End If
End Function
Public Function RunDanmaku(LBox As String, LColor As ColorConstants, LText As String)
Dim Savetime As Double
If LBox = 0 Then
Label1.Caption = LText
Label1.ForeColor = LColor





L0 = 8000
ElseIf LBox = 1 Then
Label2.Caption = LText
Label2.ForeColor = LColor




L1 = 8000
ElseIf LBox = 2 Then
Label3.Caption = LText
Label3.ForeColor = LColor




L2 = 8000
ElseIf LBox = 3 Then
Label4.Caption = LText
Label4.ForeColor = LColor




L3 = 8000
ElseIf LBox = 4 Then
Label5.Caption = LText
Label5.ForeColor = LColor




L4 = 8000
ElseIf LBox = 5 Then
Label6.Caption = LText
Label6.ForeColor = LColor




L5 = 8000
ElseIf LBox = 6 Then
Label7.Caption = LText
Label7.ForeColor = LColor




L6 = 8000
ElseIf LBox = 7 Then
Label8.Caption = LText
Label8.ForeColor = LColor




L7 = 8000
ElseIf LBox = 8 Then
Label9.Caption = LText
Label9.ForeColor = LColor




L8 = 8000
ElseIf LBox = 9 Then
Label10.Caption = LText
Label10.ForeColor = LColor




L9 = 8000
End If
End Function
Private Sub Timer1_Timer()
ProjectForm1.Caption = temt
If temt = 0 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "【琳琅馆】OC原创角色曲系列02", 2
ElseIf temt = 50 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "——漂流瓶少女与海精灵", 2
ElseIf temt = 100 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), " 《心之海》", 2
ElseIf temt = 150 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "词/曲：著小生zoki", 2
ElseIf temt = 200 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "风在说为什么倔强", 2
ElseIf temt = 250 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "海的彼岸或许不存在", 2
ElseIf temt = 300 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "一如歌谣里倾诉的", 2
ElseIf temt = 330 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "一旦碰触就消失不见的期待", 2
ElseIf temt = 390 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "纸风筝", 2
ElseIf temt = 410 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "遇见海沾染一身风雨就败", 2
ElseIf temt = 450 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "托海鸥", 2
ElseIf temt = 460 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "也不愿辜负了信赖", 2
ElseIf temt = 500 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "唯有过往鱼群睁眼看着", 2
ElseIf temt = 550 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "懵懂的她坚信和眺望等待", 2
ElseIf temt = 610 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "long time", 2
ElseIf temt = 640 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "昨夜的海卷上新的意外", 2
ElseIf temt = 680 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "世界从此不止蔚蓝色彩", 2
ElseIf temt = 730 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "漂浮而来心与心的依赖", 2
ElseIf temt = 780 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "如光明的到来，雾霾都散开", 2
ElseIf temt = 840 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "请别在意至今为止不顺意", 2
ElseIf temt = 890 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "唯有相信世界不辜负你", 2
ElseIf temt = 930 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "与浪花一起", 2
ElseIf temt = 950 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "为了能实现，请别放弃", 2
ElseIf temt = 1070 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "对夜空诉说着愿望", 2
ElseIf temt = 1130 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "星滑落下跌进了手掌", 2
ElseIf temt = 1160 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "一如海的精灵回答", 2
ElseIf temt = 1190 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "一旦放弃就消失不见的希望", 2
ElseIf temt = 1250 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "漂流瓶", 2
ElseIf temt = 1270 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "追着遥远轨迹驶向哪里", 2
ElseIf temt = 1320 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "身后的", 2
ElseIf temt = 1340 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "海星汇聚祝福话语", 2
ElseIf temt = 1370 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "珊瑚丛里海草挥手别离", 2
ElseIf temt = 1410 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "沿途风景原来也不必畏惧", 2
ElseIf temt = 1470 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "昨夜的海卷上新的意外", 2
ElseIf temt = 1520 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "世界从此不止蔚蓝色彩", 2
ElseIf temt = 1570 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "漂浮而来心与心的依赖", 2
ElseIf temt = 1610 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "如光明的到来，雾霾都散开", 2
ElseIf temt = 1670 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "请别在意至今为止不顺意", 2
ElseIf temt = 1730 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "唯有相信世界不辜负你", 2
ElseIf temt = 1760 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "与浪花一起", 2
ElseIf temt = 1790 Then
DrawDanmaku ProjectForm1, Label1, RGB(102, 204, 255), "为了能实现，请别放弃", 2
ElseIf temt > 1900 Then
End
End If
temt = temt + 1
End Sub

Private Sub Timer2_Timer()
If L0 > 0 Then
L0 = L0 - 1000
If L0 = 0 Then
Label1.Caption = ""
End If
End If

If L1 > 0 Then
L1 = L1 - 1000
If L1 = 0 Then
Label2.Caption = ""
End If
End If

If L2 > 0 Then
L2 = L2 - 1000
If L2 = 0 Then
Label3.Caption = ""
End If
End If

If L3 > 0 Then
L3 = L3 - 1000
If L3 = 0 Then
Label4.Caption = ""
End If
End If

If L4 > 0 Then
L4 = L4 - 1000
If L4 = 0 Then
Label5.Caption = ""
End If
End If

If L5 > 0 Then
L5 = L5 - 1000
If L5 = 0 Then
Label6.Caption = ""
End If
End If

If L6 > 0 Then
L6 = L6 - 1000
If L6 = 0 Then
Label7.Caption = ""
End If
End If

If L7 > 0 Then
L7 = L7 - 1000
If L7 = 0 Then
Label8.Caption = ""
End If
End If

If L8 > 0 Then
L8 = L8 - 1000
If L8 = 0 Then
Label9.Caption = ""
End If
End If

If L9 > 0 Then
L9 = L9 - 1000
If L9 = 0 Then
Label10.Caption = ""
End If
End If
End Sub
