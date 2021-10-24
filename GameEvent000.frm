VERSION 5.00
Begin VB.Form GameEvent000 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Event - Retworld"
   ClientHeight    =   6270
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8310
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6270
   ScaleWidth      =   8310
   StartUpPosition =   3  '窗口缺省
   Begin VB.Frame Frame1 
      Caption         =   "技能"
      Height          =   2415
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Visible         =   0   'False
      Width           =   8055
      Begin VB.CommandButton Command6 
         Caption         =   "返回"
         Height          =   375
         Left            =   6840
         TabIndex        =   10
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CommandButton Command5 
         Caption         =   "女装"
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
         Height          =   615
         Left            =   240
         TabIndex        =   7
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Command4 
         Caption         =   "透"
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
         Height          =   615
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label3 
         Caption         =   "尝试透它。"
         Height          =   375
         Left            =   1920
         TabIndex        =   9
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label Label2 
         Caption         =   "大幅提升您的实力，但必须先购买女装。"
         Height          =   495
         Left            =   1920
         TabIndex        =   8
         Top             =   1200
         Width           =   2055
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   3360
      Picture         =   "GameEvent000.frx":0000
      ScaleHeight     =   1935
      ScaleWidth      =   1815
      TabIndex        =   4
      Top             =   1080
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "逃跑"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6360
      TabIndex        =   3
      Top             =   5280
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "使用技能"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6360
      TabIndex        =   2
      Top             =   4680
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "交谈"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6360
      TabIndex        =   1
      Top             =   4080
      Width           =   1815
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Label1"
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
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   4080
      Width           =   6015
   End
End
Attribute VB_Name = "GameEvent000"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
GameEvent000_1.Show
Unload Me
End Sub

Private Sub Command2_Click()
Frame1.Visible = True
Command1.Visible = False
Command2.Visible = False
Command3.Visible = False
End Sub

Private Sub Command3_Click()
GameFail000.Show
Unload Me
End Sub

Private Sub Command4_Click()
Retval = MsgBox("不成功", 16, "Retworld")
End Sub

Private Sub Command6_Click()
Command1.Visible = True
Command2.Visible = True
Command3.Visible = True
Frame1.Visible = False
End Sub

Private Sub Form_Activate()
DoEvents
DoEvents
DoEvents
DoEvents
DoEvents
DoEvents
Playsound (App.Path & "\AUDIO\TALE.MP3")
End Sub

Private Sub Form_Load()
Label1.Caption = "<你收到了一个很大的快递箱>" & vbCrLf & "砰！快递箱中有一个人形生物向你飞奔了过来！" & vbCrLf & "<万物>出现了!"
End Sub
