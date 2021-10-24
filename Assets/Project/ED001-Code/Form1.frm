VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Game_Ending"
   ClientHeight    =   7185
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9585
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   479
   ScaleMode       =   0  'User
   ScaleWidth      =   639
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.Timer Timer2 
      Left            =   840
      Top             =   3480
   End
   Begin VB.Timer Timer1 
      Left            =   360
      Top             =   3480
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   3720
      ScaleHeight     =   81
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   201
      TabIndex        =   1
      Top             =   1800
      Width           =   3015
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   120
      ScaleHeight     =   81
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   201
      TabIndex        =   0
      Top             =   240
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim lTime As Byte

Private Sub Form_Load()
lTime = 0
Timer2.Interval = 1000
Timer2.Enabled = True
End Sub

Private Sub Form_Resize()
Picture2.Left = 0
Picture2.Top = 0
Picture2.Width = Me.ScaleWidth
Picture2.Height = Me.ScaleHeight
Picture1.Left = 0
Picture1.Top = 0
Picture1.Width = Me.ScaleWidth
Picture1.Height = Me.ScaleHeight
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub Timer1_Timer()
lTime = lTime + 1
ShowTransparency Picture1, Picture2, lTime
If lTime >= 255 Then
    Timer1.Enabled = False
    rtc = rtc + 1
    Timer2.Interval = 12000
    Timer2.Enabled = True
    lTime = 0
End If
End Sub

Private Sub Timer2_Timer()
Timer2.Enabled = False
If rtc = 0 Then
    Picture2.Picture = LoadPicture(App.Path & "\000.jpg")
    Picture1.Picture = LoadPicture(App.Path & "\001.jpg")
ElseIf rtc = 1 Then
    Picture2.Picture = LoadPicture(App.Path & "\001.jpg")
    Picture1.Picture = LoadPicture(App.Path & "\002.jpg")
ElseIf rtc = 2 Then
    Picture2.Picture = LoadPicture(App.Path & "\002.jpg")
    Picture1.Picture = LoadPicture(App.Path & "\003.jpg")
ElseIf rtc = 3 Then
    Picture2.Picture = LoadPicture(App.Path & "\003.jpg")
    Picture1.Picture = LoadPicture(App.Path & "\004.jpg")
ElseIf rtc = 4 Then
    Picture2.Picture = LoadPicture(App.Path & "\004.jpg")
    Picture1.Picture = LoadPicture(App.Path & "\005.jpg")
ElseIf rtc = 5 Then
    Picture2.Picture = LoadPicture(App.Path & "\005.jpg")
    Picture1.Picture = LoadPicture(App.Path & "\006.jpg")
ElseIf rtc > 5 Then
    Exit Sub
End If
Timer1.Interval = 4
Timer1.Enabled = True
End Sub
