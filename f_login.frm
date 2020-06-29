VERSION 5.00
Begin VB.Form f_login 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "FORM LOGIN"
   ClientHeight    =   4245
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7560
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4245
   ScaleWidth      =   7560
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00FF8080&
      Caption         =   "SILAHKAN LOGIN"
      Height          =   3495
      Left            =   0
      TabIndex        =   2
      Top             =   720
      Width           =   7575
      Begin VB.CommandButton combatal 
         Caption         =   "BATAL"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4200
         TabIndex        =   8
         Top             =   2400
         Width           =   1455
      End
      Begin VB.CommandButton comlogin 
         Caption         =   "LOGIN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1200
         TabIndex        =   7
         Top             =   2400
         Width           =   1335
      End
      Begin VB.TextBox txtpasword 
         Height          =   495
         IMEMode         =   3  'DISABLE
         Left            =   2400
         PasswordChar    =   "*"
         TabIndex        =   6
         Top             =   1200
         Width           =   3735
      End
      Begin VB.TextBox txtusername 
         Height          =   495
         Left            =   2400
         TabIndex        =   5
         Top             =   480
         Width           =   3735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "PASWORD"
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   1320
         Width           =   1935
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "USERNAME"
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   600
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7575
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "LOGIN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   15
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   1
         Top             =   240
         Width           =   6975
      End
   End
End
Attribute VB_Name = "f_login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rslogin As New ADODB.Recordset
Private Sub comlogin_Click()
If rslogin.State = adStateOpen Then rslogin.Close
 rslogin.Open " select * from tb_login where username= '" & txtusername & "' and pasword= '" & txtpasword & "' ", koneksidb
 If Not rslogin.EOF Then
 f_utama.Show
 txtusername.Text = ""
 txtpasword.Text = ""
 f_login.Visible = False
 
 Else
 MsgBox "login gagal", vbCritical, "pesan"
 txtusername.Text = ""
 txtpasword.Text = ""
 txtusername.SetFocus
 Unload Me
 End If

End Sub
Sub tampil_data()
Set rslogin = New ADODB.Recordset
rslogin.ActiveConnection = koneksidb
rslogin.CursorLocation = adUseClient
rslogin.LockType = adLockOptimistic
rslogin.Source = "select * from tb_login"
rslogin.Open
End Sub

Private Sub Form_Load()
Call bukadb
Call tampil_data
End Sub
