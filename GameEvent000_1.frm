VERSION 5.00
Begin VB.Form GameEvent000_1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Galgame Story Script Player"
   ClientHeight    =   7485
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14055
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   638.72
   ScaleMode       =   0  'User
   ScaleWidth      =   962.569
   StartUpPosition =   3  '窗口缺省
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "请完成表格以继续"
      ForeColor       =   &H80000008&
      Height          =   3255
      Left            =   3720
      TabIndex        =   2
      Top             =   2280
      Visible         =   0   'False
      Width           =   6615
      Begin VB.TextBox Text1 
         Height          =   1095
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   8
         Top             =   1200
         Visible         =   0   'False
         Width           =   4575
      End
      Begin VB.CheckBox Check2 
         Caption         =   "否"
         Height          =   255
         Left            =   2520
         TabIndex        =   6
         Top             =   480
         Width           =   2415
      End
      Begin VB.CheckBox Check1 
         Caption         =   "是"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   480
         Width           =   2295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "提交"
         Height          =   495
         Left            =   4680
         TabIndex        =   3
         Top             =   2520
         Width           =   1695
      End
      Begin VB.Label Label2 
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Visible         =   0   'False
         Width           =   4815
      End
      Begin VB.Label Label1 
         Caption         =   "1.(必填)最近32天是否离开过你所在的市？"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   4815
      End
   End
   Begin VB.PictureBox picturebox 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      CausesValidation=   0   'False
      ForeColor       =   &H80000008&
      Height          =   3735
      Left            =   0
      ScaleHeight     =   3735
      ScaleWidth      =   4815
      TabIndex        =   1
      Top             =   0
      Width           =   4815
   End
   Begin VB.Label talkbox 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "单击此处以开始"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1875
      Left            =   1168
      TabIndex        =   0
      Top             =   4688
      Width           =   7009
   End
End
Attribute VB_Name = "GameEvent000_1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Step

Private Sub Check1_Click()
Check2.Value = 0
Label2.Caption = "2.(必填)填写留在市内的原因，不少于500字。"
Label2.Visible = True
Text1.Visible = True
End Sub

Private Sub Check2_Click()
Check1.Value = 0
Label2.Caption = "2.(必填)填写您离开市的原因，不少于500字。"
Label2.Visible = True
Text1.Visible = True
End Sub

Private Sub Command1_Click()
End
End Sub

Private Sub Form_Load()
Step = 0
picturebox.Width = 412
picturebox.Height = 412
picturebox.Left = GameEvent000_1.ScaleWidth / 2 - picturebox.Width / 2
picturebox.Top = 0
talkbox.Width = 480
talkbox.Height = 200
talkbox.Left = GameEvent000_1.ScaleWidth / 2 - talkbox.Width / 2
talkbox.Top = 420
talkbox.ForeColor = RGB(0, 0, 0)
End Sub


Private Sub talkbox_Click()
Step = Step + 1
If Step = 1 Then
Retval = Playsound(App.Path & "\AUDIO\DW2.MP3")
GameEvent000_1.BackColor = RGB(255, 255, 255)
talkbox.ForeColor = RGB(0, 0, 0)
talkbox.Caption = "眼前突然一黑，意识中仿佛看到了不知何处的遥远光景……"
ElseIf Step = 2 Then
picturebox.Picture = LoadPicture(App.Path & "\IMAGE\BACKOMF\0000.BMP")
talkbox.Caption = vbCrLf & "――你看到了一座不可思议的城市。"
ElseIf Step = 3 Then
talkbox.Caption = "反射阳光的洁白建筑。" & vbCrLf & "列柱环绕的神殿。" & vbCrLf & "奇形怪状的塔群。"
ElseIf Step = 4 Then
talkbox.Caption = "在街道上成列行进的士兵们，" & vbCrLf & "用长枪穿刺尸体高举于空……"
ElseIf Step = 5 Then
picturebox.Visible = False
talkbox.Caption = vbCrLf & "景色变化了――"
ElseIf Step = 6 Then
picturebox.Picture = LoadPicture(App.Path & "\IMAGE\BACKOMF\0001.BMP")
GameEvent000_1.BackColor = RGB(0, 0, 0)
talkbox.ForeColor = RGB(255, 255, 255)
picturebox.Visible = True
talkbox.Caption = "在某处的室内。" & vbCrLf & "石柱撑起的高耸天花下，是一派逆光景致。" & vbCrLf & "一名少女身居其中，漫不经心地卧于席上。"
ElseIf Step = 7 Then
talkbox.Caption = vbCrLf & "「―― …… ―― …… ――」"
ElseIf Step = 8 Then
talkbox.Caption = vbCrLf & "她随即起身，默念某人的名字。"
ElseIf Step = 9 Then
talkbox.Caption = vbCrLf & "「―― …… ―― …… ――」"
ElseIf Step = 10 Then
talkbox.Caption = vbCrLf & "「――――" & Environ("username") & "――――」"
ElseIf Step = 11 Then
picturebox.Visible = False
talkbox.Caption = "……终于，画面消失了。" & vbCrLf & "你也彻底昏睡过去。"
ElseIf Step = 12 Then
Frame1.Visible = True
End If
End Sub
