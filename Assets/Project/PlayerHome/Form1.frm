VERSION 5.00
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "���ķ��� - Default"
   ClientHeight    =   5880
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9795
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5880
   ScaleWidth      =   9795
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command11 
      Caption         =   "������״̬"
      Height          =   255
      Left            =   3000
      TabIndex        =   19
      Top             =   2280
      Width           =   1095
   End
   Begin VB.CommandButton Command9 
      Caption         =   "��Դѡ��"
      Height          =   255
      Left            =   3000
      TabIndex        =   17
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command10 
      Caption         =   "������״̬"
      Height          =   255
      Left            =   3000
      TabIndex        =   16
      Top             =   1560
      Width           =   1095
   End
   Begin VB.CommandButton Command7 
      Caption         =   "������豸"
      Height          =   375
      Left            =   3000
      TabIndex        =   13
      Top             =   2640
      Width           =   1095
   End
   Begin VB.CommandButton Command8 
      Caption         =   "�Ƴ��豸"
      Height          =   375
      Left            =   4200
      TabIndex        =   12
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Frame Frame2 
      Caption         =   "����-1"
      Height          =   2055
      Left            =   2880
      TabIndex        =   11
      Top             =   1080
      Width           =   2535
      Begin VB.VScrollBar VScroll1 
         Height          =   1335
         Left            =   2160
         Max             =   16
         TabIndex        =   14
         Top             =   240
         Width           =   255
      End
      Begin VB.Label Label6 
         Caption         =   "������2 �ػ�"
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label Label5 
         Caption         =   "������1 �ѿ���"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.CommandButton Command6 
      Caption         =   "��"
      Height          =   255
      Left            =   1200
      TabIndex        =   9
      Top             =   3480
      Width           =   855
   End
   Begin VB.Frame Frame1 
      Caption         =   "NPCObj"
      Height          =   1215
      Left            =   2280
      TabIndex        =   6
      Top             =   3720
      Width           =   735
   End
   Begin VB.CommandButton Command5 
      Caption         =   "����ģʽ"
      Height          =   495
      Left            =   5520
      TabIndex        =   4
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "�ƶ����"
      Height          =   495
      Left            =   1560
      TabIndex        =   3
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "����"
      Height          =   495
      Left            =   6960
      TabIndex        =   2
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "���������"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   495
      Left            =   8400
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "��"
      Height          =   255
      Left            =   1320
      TabIndex        =   10
      Top             =   2760
      Width           =   855
   End
   Begin VB.Line Line7 
      X1              =   1800
      X2              =   2760
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line6 
      X1              =   2760
      X2              =   2760
      Y1              =   2520
      Y2              =   3480
   End
   Begin VB.Line Line5 
      X1              =   1200
      X2              =   1200
      Y1              =   2640
      Y2              =   3480
   End
   Begin VB.Label Label3 
      Caption         =   "����̨"
      Height          =   255
      Left            =   1320
      TabIndex        =   8
      Top             =   2280
      Width           =   855
   End
   Begin VB.Line Line4 
      X1              =   1200
      X2              =   2400
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Label Label2 
      Caption         =   "����2 (0/16)"
      Height          =   735
      Left            =   2040
      TabIndex        =   7
      Top             =   1200
      Width           =   615
   End
   Begin VB.Line Line3 
      X1              =   1200
      X2              =   2760
      Y1              =   1080
      Y2              =   1080
   End
   Begin VB.Line Line2 
      X1              =   2760
      X2              =   2760
      Y1              =   1080
      Y2              =   2640
   End
   Begin VB.Line Line1 
      X1              =   1200
      X2              =   1200
      Y1              =   1080
      Y2              =   2640
   End
   Begin VB.Label Label1 
      Caption         =   "����1 (2/16)"
      Height          =   735
      Left            =   1320
      TabIndex        =   5
      Top             =   1200
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command5_Click()
End
End Sub

