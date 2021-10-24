VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "[机架1-服务器1] - 控制台 - Retworld"
   ClientHeight    =   7185
   ClientLeft      =   150
   ClientTop       =   795
   ClientWidth     =   9585
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   766.4
   ScaleMode       =   0  'User
   ScaleWidth      =   678.209
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command4 
      Caption         =   "控制面板"
      Height          =   975
      Left            =   120
      TabIndex        =   6
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "回收站"
      Height          =   975
      Left            =   120
      TabIndex        =   4
      Top             =   1200
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   7215
      Left            =   0
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   481
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   641
      TabIndex        =   0
      Top             =   0
      Width           =   9615
      Begin VB.CommandButton Command2 
         Caption         =   "我的电脑"
         Height          =   975
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "开始"
         Height          =   495
         Left            =   120
         TabIndex        =   2
         Top             =   6600
         Width           =   1215
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "1616-5-124 33:235"
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   7680
         TabIndex        =   5
         Top             =   6600
         Width           =   1815
      End
      Begin VB.Label Label1 
         Height          =   735
         Left            =   0
         TabIndex        =   1
         Top             =   6480
         Width           =   9615
      End
   End
   Begin VB.Menu MENU_Disconnect 
      Caption         =   "断开连接"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MENU_Disconnect_Click()
End
End Sub
