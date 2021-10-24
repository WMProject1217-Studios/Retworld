Attribute VB_Name = "Module1"
Option Explicit
Public Type rBlendProps
    tBlendOp As Byte
    tBlendOptions As Byte
    tBlendAmount As Byte
    tAlphaType As Byte
End Type
Public Declare Function AlphaBlend Lib "msimg32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal widthSrc As Long, ByVal heightSrc As Long, ByVal blendFunct As Long) As Boolean
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVallpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Public Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Public Retval, rtc
Public Function ShortPath(ByVal LongPath As String) As String
Dim tmpStr As String * 255, intLnth As Integer
intLnth = GetShortPathName(LongPath, tmpStr, 255)
ShortPath = Left$(tmpStr, intLnth)
End Function
Public Function Playsound(ByVal AudioPath As String)
On Error GoTo Error
Retval = mciSendString("CLOSE BackgroundMusic", "", 0, 0)
Retval = mciSendString("OPEN " & ShortPath(AudioPath) & " ALIAS BackgroundMusic", "", 0, 0)
Retval = mciSendString("PLAY BackgroundMusic FROM 0", "", 0, 0)
Playsound = 0
Exit Function
Error:
Playsound = 1145
End Function
Public Sub ShowTransparency(cSrc As PictureBox, cDest As PictureBox, ByVal nLevel As Byte)
Dim LrProps As rBlendProps
Dim LnBlendPtr As Long
cDest.Cls
LrProps.tBlendAmount = nLevel
CopyMemory LnBlendPtr, LrProps, 4
With cSrc
    AlphaBlend cDest.hDC, 0, 0, .ScaleWidth, .ScaleHeight, .hDC, 0, 0, .ScaleWidth, .ScaleHeight, LnBlendPtr
End With
cDest.Refresh
End Sub
Sub Main()
rtc = 0
Form1.Show
Playsound (App.Path & "\ED001.MID")
End Sub
