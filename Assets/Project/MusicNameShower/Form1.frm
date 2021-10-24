VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5550
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9855
   BeginProperty Font 
      Name            =   "微软雅黑"
      Size            =   26.25
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   370
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   657
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer2 
      Left            =   600
      Top             =   2400
   End
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   2400
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   9615
   End
End
Attribute VB_Name = "Form1"
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
Private Const HWND_NOTOPMOST = -2
Private Const WS_DISABLED = &H8000000
Private Const GWL_STYLE = (-16)

Private Sub Form_Activate()
Call SetWindowPos(Me.hwnd, -1, 0, 0, 0, 0, 3)
Me.Left = 300
Me.Top = 300
End Sub

Private Sub Form_Load()
Call SetWindowPos(Me.hwnd, -1, 0, 0, 0, 0, 3)
SetWindowLong Me.hwnd, -20, GetWindowLong(Me.hwnd, -20) Or &H80000
SetWindowLong Me.hwnd, GWL_EXSTYLE, GetWindowLong(Me.hwnd, GWL_EXSTYLE) Or WS_EX_LAYERED Or WS_EX_TRANSPARENT
Dim rtn As Long
Me.BackColor = RGB(254, 114, 145) '设置窗口颜色
rtn = GetWindowLong(hwnd, GWL_EXSTYLE)
rtn = rtn Or WS_EX_LAYERED
SetWindowLong hwnd, GWL_EXSTYLE, rtn
SetLayeredWindowAttributes hwnd, RGB(254, 114, 145), 150, &H1
'RGB(0, 0, 0)参数就是要透明掉的颜色
Label1.ForeColor = RGB(102, 204, 255)
SetWindowLong Me.hwnd, GWL_EXSTYLE, GetWindowLong(Me.hwnd, GWL_EXSTYLE) Or WS_DISABLED
Label1.Caption = Replace(Command, "\n", vbCrLf)
Timer1.Interval = 12000
Timer1.Enabled = True
End Sub

Private Sub Form_Resize()
Call SetWindowPos(Me.hwnd, -1, 0, 0, 0, 0, 3)
Me.Left = 300
Me.Top = 300
End Sub

Private Sub Timer1_Timer()
End
End Sub
