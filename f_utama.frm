VERSION 5.00
Begin VB.Form f_utama 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "FORM UTAMA"
   ClientHeight    =   10260
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   20460
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11593.22
   ScaleMode       =   0  'User
   ScaleWidth      =   21737.05
   Begin VB.Image Image2 
      BorderStyle     =   1  'Fixed Single
      Height          =   10095
      Left            =   0
      Picture         =   "f_utama.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   20535
   End
   Begin VB.Menu data 
      Caption         =   "DATA"
      Begin VB.Menu datamahasiswa 
         Caption         =   "DATA MAHASISWA"
      End
   End
   Begin VB.Menu pendaftaran 
      Caption         =   "PENDAFTARAN"
   End
   Begin VB.Menu penilaian 
      Caption         =   "PENILAIAN"
   End
   Begin VB.Menu settingakun 
      Caption         =   "SETTING AKUN"
   End
End
Attribute VB_Name = "f_utama"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub datamahasiswa_Click()
f_mhs.Show
End Sub

Private Sub pendaftaran_Click()
f_daftar.Show
End Sub

Private Sub penilaian_Click()
f_nilai.Show
End Sub

Private Sub settingakun_Click()
f_setting.Show
End Sub
