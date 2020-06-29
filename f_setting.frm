VERSION 5.00
Begin VB.Form f_setting 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   4455
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6690
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   6690
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H00FF8080&
      Height          =   3735
      Left            =   0
      TabIndex        =   2
      Top             =   720
      Width           =   6735
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Password Baru"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Username Baru"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Password Lama"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Username Lama"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6735
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "FORM SETTING"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   6255
      End
   End
End
Attribute VB_Name = "f_setting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rssetting As New ADODB.Recordset

Private Sub cmdbatal_Click()
Txtpaswordlama.Text = ""
Txtusernamelama.Text = ""
Txtusenamebaru.Text = ""
Txtpsbaru.Text = ""
End Sub
Sub aktif()
Txtusenamebaru.Enabled = True
Txtpsbaru.Enabled = True
cmdubah.Enabled = True
End Sub
Sub nonaktif()
Txtusenamebaru.Enabled = False
Txtpsbaru.Enabled = False
cmdubah.Enabled = False
End Sub
Private Sub cmdubah_Click()
koneksidb.Execute "update tb_login set username='" & Txtpsbaru & "',pasword='" & Txtpsbaru & "'"
Call bukadb
MsgBox "pasword telah di ubah", vbInformation, "pesan"
Txtusenamebaru.SetFocus
End Sub
Private Sub Form_Load()
Call bukadb
Call nonaktif
End Sub
Private Sub Txtusernamelama_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
If rssetting.State = adStateOpen Then rssetting.Close
 rssetting.Open " select * from tb_login where username= '" & Txtusernamelama & "'", koneksidb
 If Not rssetting.EOF Then
Txtusernamelama.Text = rssetting!UserName
Txtpaswordlama.Text = rssetting!pasword
Call aktif
Else
MsgBox "Username Salah", vbCritical, "Pesan"
Txtusernamelama.Text = ""
Txtusernamelama.SetFocus
End If
End If
End Sub
