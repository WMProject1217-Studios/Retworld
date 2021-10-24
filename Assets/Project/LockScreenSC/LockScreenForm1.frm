VERSION 5.00
Begin VB.Form LockScreenForm1 
   BorderStyle     =   0  'None
   Caption         =   "Lock Screen"
   ClientHeight    =   6585
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12600
   Icon            =   "LockScreenForm1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "LockScreenForm1.frx":030A
   ScaleHeight     =   6585
   ScaleWidth      =   12600
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Left            =   480
      Top             =   720
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "1616 年 12 月 17 日"
      BeginProperty Font 
         Name            =   "微软雅黑 Light"
         Size            =   24
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   600
      TabIndex        =   1
      Top             =   1800
      Width           =   9375
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "7:12"
      BeginProperty Font 
         Name            =   "微软雅黑 Light"
         Size            =   72
         Charset         =   134
         Weight          =   290
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   11175
   End
End
Attribute VB_Name = "LockScreenForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function AlphaBlend Lib "msimg32.dll" (ByVal hdcDest As Long, ByVal nXOriginDest As Long, ByVal nYOriginDest As Long, ByVal nWidthDest As Long, ByVal hHeightDest As Long, ByVal hdcSrc As Long, ByVal nXOriginSrc As Long, ByVal nYOriginSrc As Long, ByVal nWidthSrc As Long, ByVal nHeightSrc As Long, ByVal BLENDFUNCTION As Long) As Long
Private Declare Sub RtlMoveMemory Lib "kernel32" (Destination As Any, Source As Any, ByVal Length As Long)
Private Type BLENDFUNCTION
BlendOp As Byte
BlendFlags As Byte
SourceConstantAlpha As Byte
AlphaFormat As Byte
End Type
Private Const AC_SRC_OVER = &H0
Private Const SWP_NOSIZE = &H1
Private Const SWP_NOMOVE = &H2
Private Const HWND_TOPMOST = -1
Private Const HWND_NOTOPMOST = -2
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public ndis
Private Declare Function timeGetTime Lib "winmm.dll" () As Long
Public DF
Public Sub Delay(ByVal Milliseconds As Long)
    Dim lngTime As Long
    lngTime = timeGetTime
    While timeGetTime < lngTime + Milliseconds
        DoEvents
    Wend
End Sub
Public Sub Wkdy()
Dim ds
ds = Weekday(Date)
If ds = 1 Then
DF = "星期日"
ElseIf ds = 2 Then
DF = "星期一"
ElseIf ds = 3 Then
DF = "星期二"
ElseIf ds = 4 Then
DF = "星期三"
ElseIf ds = 5 Then
DF = "星期四"
ElseIf ds = 6 Then
DF = "星期五"
ElseIf ds = 7 Then
DF = "星期六"
End If
End Sub
Private Sub Form_Activate()
Timer1.Interval = 128
Timer1.Enabled = True


Me.BackColor = RGB(0, 0, 0)
Label1.ForeColor = RGB(255, 255, 255)
Label2.ForeColor = RGB(255, 255, 255)
Me.PaintPicture Me.Picture, 0, 0, Me.ScaleWidth, Me.ScaleHeight

End Sub

Private Sub Form_DblClick()
End
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
End
End Sub

Private Sub Form_Load()
Me.AutoRedraw = True
End Sub

Private Sub Form_Resize()
Label1.Left = 690
Label2.Left = 690
Label1.Top = Me.Height - Label2.Height - Label1.Height
Label2.Top = Me.Height - Label2.Height
Me.PaintPicture Me.Picture, 0, 0, Me.ScaleWidth, Me.ScaleHeight
End Sub
Function SCTimeCount()
Dim timesc, retval, mssc, ssc, msc, hsc, dsc, mosc, ysc
retval = Split(Date, "/")
timesc = (retval(0) - 1616) * 365.25 + (retval(1) - 12) * (365.25 / 12) + (retval(2) - 17)
timesc = timesc * 24 * 60 * 60
retval = Split(Time, ":")
timesc = timesc + (retval(0) - 7) * 60 * 60 + (retval(1) - 12) * 60 + retval(2)
timesc = timesc * 1000
mssc = (timesc / 1024 - Int(timesc / 1024)) * 1024
timesc = Int(timesc / 1024)
ssc = (timesc / 32 - Int(timesc / 32)) * 32
timesc = Int(timesc / 32) + 12
msc = (timesc / 256 - Int(timesc / 256)) * 256
timesc = Int(timesc / 256) + 7
hsc = (timesc / 64 - Int(timesc / 64)) * 64
timesc = Int(timesc / 64) + 17
dsc = (timesc / 128 - Int(timesc / 128)) * 128
timesc = Int(timesc / 128) + 12
mosc = (timesc / 64 - Int(timesc / 64)) * 64
timesc = Int(timesc / 64)
ysc = timesc + 1616
timesc = ysc & "/" & mosc & "/" & dsc & "-" & hsc & ":" & msc & ":" & ssc
SCTimeCount = timesc
End Function
Private Sub Timer1_Timer()
Dim x, y, z, t
x = SCTimeCount()
y = Split(x, "-")
z = Split(y(0), "/")
t = Split(y(1), ":")
Label1.Caption = t(0) & ":" & t(1) '& ":" & t(2)
Wkdy
Label2.Caption = z(0) & " 年 " & z(1) & " 月 " & z(2) & " 日 , " & DF
End Sub
