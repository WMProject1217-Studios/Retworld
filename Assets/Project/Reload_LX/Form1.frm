VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim Retval
Retval = MsgBox("��", vbOKOnly, "")
Retval = MsgBox("Ϊʲô������" & Environ("username") & "��", vbOKOnly, "")
Retval = MsgBox("�Ҹ��߹����߿���", vbOKOnly, "")
Retval = MsgBox("...��֪�������ų�����˵���԰ɣ�", vbOKOnly, "")
Retval = MsgBox("...����Ҫ�Ҹ�������࣬�ǰɣ���", vbOKOnly, "")
Retval = MsgBox("��", vbOKOnly, "")
Retval = MsgBox("����㲻���뿪...�һ�������Զ���޷��뿪��", vbOKOnly, "")
End Sub
