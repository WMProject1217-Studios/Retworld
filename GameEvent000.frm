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
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame1 
      Caption         =   "����"
      Height          =   2415
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Visible         =   0   'False
      Width           =   8055
      Begin VB.CommandButton Command6 
         Caption         =   "����"
         Height          =   375
         Left            =   6840
         TabIndex        =   10
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Ůװ"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "΢���ź�"
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
         Caption         =   "͸"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "΢���ź�"
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
         Caption         =   "����͸����"
         Height          =   375
         Left            =   1920
         TabIndex        =   9
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label Label2 
         Caption         =   "�����������ʵ�����������ȹ���Ůװ��"
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
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "΢���ź�"
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
      Caption         =   "ʹ�ü���"
      BeginProperty Font 
         Name            =   "΢���ź�"
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
      Caption         =   "��̸"
      BeginProperty Font 
         Name            =   "΢���ź�"
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
         Name            =   "΢���ź�"
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
Retval = MsgBox("���ɹ�", 16, "Retworld")
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
Label1.Caption = "<���յ���һ���ܴ�Ŀ����>" & vbCrLf & "�飡���������һ��������������ɱ��˹�����" & vbCrLf & "<����>������!"
End Sub
