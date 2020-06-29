VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form f_cari 
   Caption         =   "Form cari"
   ClientHeight    =   6105
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8865
   LinkTopic       =   "Form1"
   ScaleHeight     =   6105
   ScaleWidth      =   8865
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton comadd 
      Caption         =   "ADD"
      Height          =   375
      Left            =   7560
      TabIndex        =   3
      Top             =   5160
      Width           =   855
   End
   Begin VB.TextBox txtcari 
      Height          =   375
      Left            =   2040
      TabIndex        =   2
      Top             =   5160
      Width           =   4815
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3975
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   8655
      _ExtentX        =   15266
      _ExtentY        =   7011
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.Label Label2 
      Caption         =   "pencarian"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   5160
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "FORM CARI"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   0
      Width           =   8055
   End
End
Attribute VB_Name = "f_cari"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsmahasiswa As New ADODB.Recordset
Dim rscari As New ADODB.Recordset
Dim rsdaftar As New ADODB.Recordset

Sub segar()
Call bukadb
Call tampil_data
Set DataGrid1.DataSource = rsmahasiswa
With DataGrid1
Call edit_grid
End With
End Sub


Private Sub comadd_Click()
If rsmahasiswa.State = adStateOpen Then rsmahasiswa.Close
rsmahasiswa.Open "select * from tb_mhs where nim like '%" & txtcari & "%'", koneksidb
If Not rsmahasiswa.EOF Then
If f_daftar.Visible = True Then
f_daftar.cmbnim.Text = rsmahasiswa!nim
f_daftar.txtnama.Text = rsmahasiswa!nama
f_daftar.txttempatlahir.Text = rsmahasiswa!t_lahir
f_daftar.txttanggallahir.Text = rsmahasiswa!tgl_lahir
f_daftar.txtjk.Text = rsmahasiswa!jk
f_daftar.txtalamat.Text = rsmahasiswa!alamat
f_daftar.txtjurusan.Text = rsmahasiswa!jurusan
f_daftar.txttelpon.Text = rsmahasiswa!telpon
Call bukadb
Call tampil_data
Set DataGrid1.DataSource = rsmahasiswa
With DataGrid1
Call edit_grid
DataGrid1.Refresh
f_daftar.Refresh
f_cari.Refresh
f_mhs.Refresh
End With
End If
End If
Unload Me
End Sub

Private Sub Form_Load()
Call bukadb
Call tampil_data
Set DataGrid1.DataSource = rsmahasiswa
With rsmahasiswa
End With
Call edit_grid

End Sub
Sub tampil_data()
Set rsmahasiswa = New ADODB.Recordset
rsmahasiswa.ActiveConnection = koneksidb
rsmahasiswa.CursorLocation = adUseClient
rsmahasiswa.LockType = adLockOptimistic
rsmahasiswa.Source = "select * from tb_mhs"
rsmahasiswa.Open
End Sub
Sub edit_grid()
With DataGrid1
    .Columns(0).Caption = "NIM"
    .Columns(1).Caption = "NAMA MAHASISWA "
    .Columns(2).Caption = "TEMPAT LAHIR"
    .Columns(3).Caption = "TANGGAL LAHIR"
    .Columns(4).Caption = "JENIS KELAMIN"
    .Columns(5).Caption = "ALAMAT"
    .Columns(6).Caption = "JURUSAN"
    .Columns(7).Caption = "TELPON"
    .Columns(0).Width = 1000
    .Columns(1).Width = 2000
    .Columns(2).Width = 1500
    .Columns(3).Width = 1500
    .Columns(4).Width = 1500
    .Columns(5).Width = 4000
    .Columns(6).Width = 1200
    .Columns(7).Width = 1200
End With
End Sub


Private Sub txtcari_Change()
Set rsmahasiswa = New ADODB.Recordset
rsmahasiswa.Open "select * from tb_mhs where nim like '%" & txtcari.Text & "%'", koneksidb
If Not rsmahasiswa.EOF Then
Set DataGrid1.DataSource = rsmahasiswa
Call edit_grid
End If

End Sub

Private Sub txtcari_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
If rsmahasiswa.State = adStateOpen Then rsmahasiswa.Close
rsmahasiswa.Open "select * from tb_mhs where nim like '%" & txtcari & "%'", koneksidb
If Not rsmahasiswa.EOF Then
If f_daftar.Visible = True Then
f_daftar.txtnim.Text = rsmahasiswa!nim
f_daftar.txtnama.Text = rsmahasiswa!nama
f_daftar.txttempatlahir.Text = rsmahasiswa!t_lahir
f_daftar.txttanggallahir.Text = rsmahasiswa!tgl_lahir
f_daftar.txtjk.Text = rsmahasiswa!jk
f_daftar.txtalamat.Text = rsmahasiswa!alamat
f_daftar.txtjurusan.Text = rsmahasiswa!jurusan
f_daftar.txttelpon.Text = rsmahasiswa!telpon
Call bukadb
Call tampil_data
Set DataGrid1.DataSource = rsmahasiswa
With DataGrid1
End If
End If
Unload Me
End If
End Sub
