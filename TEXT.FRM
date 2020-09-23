VERSION 5.00
Begin VB.Form text 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "3D TEXT"
   ClientHeight    =   2280
   ClientLeft      =   3135
   ClientTop       =   3480
   ClientWidth     =   5415
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2280
   ScaleWidth      =   5415
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   975
      Left            =   480
      ScaleHeight     =   975
      ScaleWidth      =   4335
      TabIndex        =   1
      Top             =   360
      Width           =   4335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2280
      TabIndex        =   0
      Top             =   1680
      Width           =   735
   End
   Begin VB.Menu Exit 
      Caption         =   "E&xit"
   End
   Begin VB.Menu About 
      Caption         =   "&About"
   End
End
Attribute VB_Name = "text"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'3D Text Example
'John Heslop
'Tengauge Software Inc.
'http://www.Tengauge.com
'Pebbycat@tengauge.co.uk
'
'I don't care if you make millions out of it, e-mail me comment please me comment please, at least!
'
'I hope this helps you!
'
'Please feel free to e-mail me @ Pebbycat@tengauge.co.uk for questions. I get lonley sometimes!!
'
'This was created for newbies, it is very simple
'
'Just move the Picturebox where you want and see the results
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub Command1_Click()

'Exits the program

Unload Me

End Sub

Private Sub Exit_Click()

'Exits the program

Unload Me

End Sub

Private Sub Form_Load()
    Picture1.AutoRedraw = True
    Picture1.FontSize = 30
    Dim ShadowX
    Dim ShadowY
    Picture1.ScaleMode = 3
    Picture1.ForeColor = vbButtonShadow
    ShadowY = 5
    ShadowX = 5
    For i = 0 To 5
        Picture1.CurrentX = ShadowX + i
        Picture1.CurrentY = ShadowY + i
        
    If i = 5 Then Picture1.ForeColor = vbActiveTitleBarText
            Picture1.Print "Tengauge.com"
    Next
End Sub
Private Sub About_Click()

'Pop up box with a information image on, & vbCrLf &  that means NL (New Line)

MsgBox "Tengauge Software inc. - Please vote for me if you have time :)" & vbCrLf & "Visit our site @ http://www.tengauge.com - Next Generation Tech Portal" & vbCrLf & "Planet Source Code Rules!!!!!", vbQuestion, "About 3D Text"
End Sub
