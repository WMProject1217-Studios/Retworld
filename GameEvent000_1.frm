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
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "����ɱ���Լ���"
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
         Caption         =   "��"
         Height          =   255
         Left            =   2520
         TabIndex        =   6
         Top             =   480
         Width           =   2415
      End
      Begin VB.CheckBox Check1 
         Caption         =   "��"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   480
         Width           =   2295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "�ύ"
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
         Caption         =   "1.(����)���32���Ƿ��뿪�������ڵ��У�"
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
      Caption         =   "�����˴��Կ�ʼ"
      BeginProperty Font 
         Name            =   "����"
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
Label2.Caption = "2.(����)��д�������ڵ�ԭ�򣬲�����500�֡�"
Label2.Visible = True
Text1.Visible = True
End Sub

Private Sub Check2_Click()
Check1.Value = 0
Label2.Caption = "2.(����)��д���뿪�е�ԭ�򣬲�����500�֡�"
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
talkbox.Caption = "��ǰͻȻһ�ڣ���ʶ�з·𿴵��˲�֪�δ���ңԶ�⾰����"
ElseIf Step = 2 Then
picturebox.Picture = LoadPicture(App.Path & "\IMAGE\BACKOMF\0000.BMP")
talkbox.Caption = vbCrLf & "�D�D�㿴����һ������˼��ĳ��С�"
ElseIf Step = 3 Then
talkbox.Caption = "��������Ľ�׽�����" & vbCrLf & "�������Ƶ���" & vbCrLf & "���ι�״����Ⱥ��"
ElseIf Step = 4 Then
talkbox.Caption = "�ڽֵ��ϳ����н���ʿ���ǣ�" & vbCrLf & "�ó�ǹ����ʬ��߾��ڿա���"
ElseIf Step = 5 Then
picturebox.Visible = False
talkbox.Caption = vbCrLf & "��ɫ�仯�˨D�D"
ElseIf Step = 6 Then
picturebox.Picture = LoadPicture(App.Path & "\IMAGE\BACKOMF\0001.BMP")
GameEvent000_1.BackColor = RGB(0, 0, 0)
talkbox.ForeColor = RGB(255, 255, 255)
picturebox.Visible = True
talkbox.Caption = "��ĳ�������ڡ�" & vbCrLf & "ʯ������ĸ����컨�£���һ����⾰�¡�" & vbCrLf & "һ����Ů������У��������ĵ�����ϯ�ϡ�"
ElseIf Step = 7 Then
talkbox.Caption = vbCrLf & "���D�D ���� �D�D ���� �D�D��"
ElseIf Step = 8 Then
talkbox.Caption = vbCrLf & "���漴����Ĭ��ĳ�˵����֡�"
ElseIf Step = 9 Then
talkbox.Caption = vbCrLf & "���D�D ���� �D�D ���� �D�D��"
ElseIf Step = 10 Then
talkbox.Caption = vbCrLf & "���D�D�D�D" & Environ("username") & "�D�D�D�D��"
ElseIf Step = 11 Then
picturebox.Visible = False
talkbox.Caption = "�������ڣ�������ʧ�ˡ�" & vbCrLf & "��Ҳ���׻�˯��ȥ��"
ElseIf Step = 12 Then
Frame1.Visible = True
End If
End Sub
