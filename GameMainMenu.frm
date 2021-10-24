VERSION 5.00
Begin VB.Form GameMainMenu 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Retworld"
   ClientHeight    =   5745
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10620
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5745
   ScaleWidth      =   10620
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox LogWindow 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   4
      Top             =   1440
      Visible         =   0   'False
      Width           =   10215
   End
   Begin VB.Timer Timer2 
      Left            =   10080
      Top             =   480
   End
   Begin VB.Timer Timer1 
      Left            =   10080
      Top             =   0
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Initializing game......"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   120
      TabIndex        =   3
      Top             =   720
      Visible         =   0   'False
      Width           =   3015
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "exec launcher.wmscript"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   4200
      TabIndex        =   2
      Top             =   120
      Visible         =   0   'False
      Width           =   4215
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "_"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   4200
      TabIndex        =   1
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "RootAdmin@Retworld:_\>"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "GameMainMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public GameMainMenu_TimerCR
Public Function ConsoleOutput(ByVal OutputType As String, ByVal OutputText As String)
If OutputType = "log" Then
    If LogWindow.Text <> "" Then
        LogWindow.Text = LogWindow.Text & vbCrLf & "[" & Date & " " & Time & "]" & OutputText
    Else
        LogWindow.Text = "[" & Date & " " & Time & "]" & OutputText
    End If
ElseIf OutputType = "direct" Then
    If LogWindow.Text <> "" Then
        LogWindow.Text = LogWindow.Text & vbCrLf & OutputText
    Else
        LogWindow.Text = OutputText
    End If
Else
    If LogWindow.Text <> "" Then
        LogWindow.Text = LogWindow.Text & vbCrLf & "[" & Date & " " & Time & "]" & "[FAIL]Function ConsoleOutput 参数 OutputType 不正确,该参数应为 log 或 direct"
    Else
        LogWindow.Text = "[" & Date & " " & Time & "]" & "[FAIL]Function ConsoleOutput 参数 Outputtype 不正确,该参数应为 log 或 direct"
    End If
End If
LogWindow.SelStart = Len(LogWindow.Text)
End Function
Private Sub Form_Load()
GameMainMenu_TimerCR = 0
Timer1.Interval = 300
Timer1.Enabled = True
Timer2.Interval = 1000
Timer2.Enabled = True
End Sub

Private Sub Timer1_Timer()
If Label2.Visible = True Then
Label2.Visible = False
Else
Label2.Visible = True
End If
End Sub

Private Sub Timer2_Timer()
If GameMainMenu_TimerCR = 2 Then
Label2.Top = Label1.Height + Label1.Top
Label2.Left = Label1.Left
Label3.Visible = True
ElseIf GameMainMenu_TimerCR = 5 Then
Label2.Left = Label4.Width + Label4.Left
Label4.Visible = True
ElseIf GameMainMenu_TimerCR = 7 Then
Timer1.Enabled = False
LogWindow.Visible = True
Dim MUT As MEMORY_USAGE
Dim CPUInfo, MemoryInfo, DiskInfo
Retval = GetMemoryInfo(MUT)
CPUInfo = "CPU Usage : " & GetCPUUsage()
MemoryInfo = "Free RAM : " & ConvertByteNumber(MUT.AvailablePhysicalMemory) & "/" & ConvertByteNumber(MUT.PhysicalMemorySize)
DiskInfo = "Free Disk Space : " & GetDiskInfo()
Retval = ConsoleOutput("direct", "System : " & GetWindowsVersion() & vbCrLf & CPUInfo & vbCrLf & MemoryInfo & vbCrLf & DiskInfo)
ElseIf GameMainMenu_TimerCR = 9 Then
Retval = ConsoleOutput("direct", "Launching game......")
ElseIf GameMainMenu_TimerCR = 11 Then
GameEvent000.Show
Unload Me
End If
GameMainMenu_TimerCR = GameMainMenu_TimerCR + 1
End Sub
