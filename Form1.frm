VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form f_mhs 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "form DATA MAHASISWA"
   ClientHeight    =   7890
   ClientLeft      =   -15
   ClientTop       =   270
   ClientWidth     =   11115
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7890
   ScaleWidth      =   11115
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0C000&
      Height          =   2535
      Left            =   120
      TabIndex        =   21
      Top             =   5280
      Width           =   10935
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   1335
         Left            =   360
         TabIndex        =   25
         Top             =   840
         Width           =   10095
         _ExtentX        =   17806
         _ExtentY        =   2355
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
      Begin VB.CommandButton cmdadd 
         Caption         =   "ADD"
         Height          =   315
         Left            =   7920
         TabIndex        =   24
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox txtcari 
         Height          =   285
         Left            =   2520
         TabIndex        =   22
         Top             =   240
         Width           =   4575
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "PENCARIAN"
         Height          =   255
         Left            =   600
         TabIndex        =   23
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FFFF00&
      Caption         =   "INPUT DATA MAHASISWA"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   4575
      Left            =   120
      TabIndex        =   2
      Top             =   720
      Width           =   10935
      Begin VB.CommandButton cmdlaporan 
         Caption         =   "LAPORAN"
         Height          =   495
         Left            =   9120
         TabIndex        =   28
         Top             =   3720
         Width           =   975
      End
      Begin VB.ComboBox cmbjurusan 
         Height          =   315
         Left            =   2280
         TabIndex        =   27
         Text            =   "PILIH JURUSAN"
         Top             =   3600
         Width           =   3015
      End
      Begin VB.CommandButton cmdhapus 
         Caption         =   "HAPUS"
         Height          =   375
         Left            =   9120
         TabIndex        =   20
         Top             =   3000
         Width           =   975
      End
      Begin VB.CommandButton cmdedit 
         Caption         =   "EDIT"
         Height          =   375
         Left            =   9120
         TabIndex        =   19
         Top             =   2160
         Width           =   975
      End
      Begin VB.CommandButton cmdsimpan 
         Caption         =   "SIMPAN"
         Height          =   375
         Left            =   9120
         TabIndex        =   18
         Top             =   1200
         Width           =   975
      End
      Begin VB.CommandButton cmdbatal 
         Caption         =   "BATAL"
         Height          =   375
         Left            =   9120
         TabIndex        =   17
         Top             =   360
         Width           =   975
      End
      Begin VB.TextBox txttelpon 
         Height          =   375
         Left            =   2280
         TabIndex        =   16
         Top             =   4080
         Width           =   2895
      End
      Begin VB.TextBox txtalamat 
         Height          =   735
         Left            =   2280
         MultiLine       =   -1  'True
         TabIndex        =   15
         Top             =   2760
         Width           =   5415
      End
      Begin VB.ComboBox cmbjk 
         Height          =   315
         Left            =   2280
         TabIndex        =   14
         Text            =   "PILIH JENIS KELAMIN"
         Top             =   2280
         Width           =   2175
      End
      Begin VB.TextBox txttgllahir 
         Height          =   375
         Left            =   2280
         TabIndex        =   13
         Top             =   1800
         Width           =   2535
      End
      Begin VB.TextBox txttempatlahir 
         Height          =   375
         Left            =   2280
         TabIndex        =   12
         Top             =   1320
         Width           =   3255
      End
      Begin VB.TextBox txtnama 
         Height          =   375
         Left            =   2280
         TabIndex        =   11
         Top             =   840
         Width           =   3735
      End
      Begin VB.TextBox txtnim 
         Height          =   375
         Left            =   2280
         TabIndex        =   10
         Top             =   360
         Width           =   2415
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "JURUSAN"
         Height          =   255
         Left            =   360
         TabIndex        =   26
         Top             =   3720
         Width           =   1455
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "TELPON"
         Height          =   255
         Left            =   360
         TabIndex        =   9
         Top             =   4200
         Width           =   1455
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "ALAMAT"
         Height          =   495
         Left            =   360
         TabIndex        =   8
         Top             =   2760
         Width           =   975
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "JENIS KELAMIN"
         Height          =   375
         Left            =   360
         TabIndex        =   7
         Top             =   2280
         Width           =   1695
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "TANGGAL LAHIR"
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   1920
         Width           =   1335
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "TEMPAT LAHIR"
         Height          =   375
         Left            =   360
         TabIndex        =   5
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "NAMA"
         Height          =   375
         Left            =   360
         TabIndex        =   4
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "NIM"
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C000&
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "DATA MAHASISWA"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   10455
      End
   End
End
Attribute VB_Name = "f_mhs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsmahasiswa As New ADODB.Recordset

Private Sub cmdadd_Click()
If rsmahasiswa.State = adStateOpen Then rsmahasiswa.Close
rsmahasiswa.Open "select * from tb_mhs where nim like '%" & txtcari & "%'", koneksidb
If Not rsmahasiswa.EOF Then
txtnim.Text = rsmahasiswa!nim
txtnama.Text = rsmahasiswa!nama
txttempatlahir.Text = rsmahasiswa!t_lahir
txttgllahir.Text = rsmahasiswa!tgl_lahir
cmbjk.Text = rsmahasiswa!jk
txtalamat.Text = rsmahasiswa!alamat
cmbjurusan.Text = rsmahasiswa!jurusan
txttelpon.Text = rsmahasiswa!telpon
Call segar
End If
End If
End Sub

Private Sub cmdbatal_Click()
Call kosong
End Sub

Private Sub cmdedit_Click()
Dim ubah As String
ubah = MsgBox("yakin akan mengubah data ini", vbYesNo, "pesan")
If ubah = vbYes Then
koneksidb.Execute "update tb_mhs set nama='" & txtnama & "',t_lahir='" & txttempatlahir & "',tgl_lahir='" & txttgllahir & "',jk='" & cmbjk & "',alamat='" & txtalamat & "',jurusan='" & cmbjurusan & "',telpon='" & txttelpon & "' where nim='" & txtnim & "'"
MsgBox " DATA BERHASIL DIEDIT", vbInformation, "pesan"
Call bukadb
Call segar
Call edit_grid
Call kosong
txtnim.SetFocus
End If
End Sub

Private Sub cmdhapus_Click()
Dim hapus As String
hapus = MsgBox("yakin akan menghapus data ini", vbYesNo, "pesan")
If hapus = vbYes Then
koneksidb.Execute "delete from tb_mhs where nim='" & txtnim & "'"
Call segar
Call kosong
txtnim.SetFocus
End If
End Sub

Private Sub cmdlaporan_Click()
DataReportmahasiswa.Show
End Sub

Private Sub cmdsimpan_Click()
On Error Resume Next
    If txtnim.Text = "" Then
    MsgBox "Nim kosong", vbExclamation, "pesan"
    txtnim.SetFocus
    Exit Sub
    End If
    If txtnama.Text = "" Then
    MsgBox "nama masih kosong", vbExclamation, "pesan"
    txtnama.SetFocus
    Exit Sub
    End If
    If txttempatlahir.Text = "" Then
    MsgBox "tempat lahir masih kosong", vbExclamation, "pesan"
    Txtnmpasien.SetFocus
    Exit Sub
    End If
    If txttgllahir.Text = "" Then
    MsgBox "tanggal lahir kosong", vbExclamation, "pesan"
    txttgllahir.SetFocus
    Exit Sub
    End If
    If cmbjk.Text = "pilih jenis kelamin" Then
    MsgBox "pilih jenis kelamin", vbExclamation, "pesan"
    cmbjk.SetFocus
    Exit Sub
    End If
    If txtalamat.Text = "" Then
    MsgBox "isi alamat", vbExclamation, "pesan"
    txtalamat.SetFocus
    Exit Sub
    End If
    If cmbjurusan.Text = "" Then
    MsgBox "PILIH JURUSAN", vbExclamation, "pesan"
    cmbjurusan.SetFocus
    Exit Sub
    End If
    If txttelpon.Text = "" Then
    MsgBox "isi nomor telpon", vbExclamation, "pesan"
    txttelpon.SetFocus
    Exit Sub
    End If

Set rsmahasiswa = New ADODB.Recordset
rsmahasiswa.Open "select * from tb_mhs where nim='" & txtnim.Text & "'", koneksidb
If Not rsmahasiswa.EOF Then
MsgBox "nim sudah digunakan", vbCritical, "pesan"
txtnim.Text = ""
txtnim.SetFocus
Exit Sub
Else
koneksidb.Execute "insert into tb_mhs(nim,nama,t_lahir,tgl_lahir,jk,alamat,jurusan,telpon) value ('" & txtnim & "','" & txtnama & "','" & txttempatlahir & "','" & txttgllahir & "','" & cmbjk & "','" & txtalamat & "','" & cmbjurusan & "','" & txttelpon & "')"
MsgBox "DATA TERSIMPAN"
Call tampil_data
Set DataGrid1.DataSource = rsmahasiswa
With DataGrid1
End With
Call edit_grid
Call kosong
Txtnopasien.SetFocus
End If
End Sub

Private Sub DataGrid1_Click()
On Error Resume Next
txtnim.Text = rsmahasiswa!nim
txtnama.Text = rsmahasiswa!nama
txttempatlahir.Text = rsmahasiswa!t_lahir
txttgllahir.Text = rsmahasiswa!tgl_lahir
cmbjk.Text = rsmahasiswa!jk
txtalamat.Text = rsmahasiswa!alamat
cmbjurusan.Text = rsmahasiswa!jurusan
txttelpon.Text = rsmahasiswa!telpon
Call segar

End Sub

Private Sub Form_Load()
With cmbjk
    .AddItem "laki-laki"
    .AddItem "perempuan"
End With
With cmbjurusan
    .AddItem "SISTEM INFORMASI"
    .AddItem "TEKNIK INFORMATIKA"
    .AddItem "MANAJEMEN"
    .AddItem "AKUNTANSI"
End With
Call segar

End Sub
Sub kosong()
txtnim.Text = ""
txtnama.Text = ""
txttempatlahir.Text = ""
txttgllahir.Text = ""
cmbjk.Text = "PILIH JENIS KELAMIN"
txtalamat.Text = ""
txttelpon.Text = ""
cmbjurusan.Text = "PILIH JURUSAN"
End Sub
Sub segar()
Call bukadb
Call tampil_data
Set DataGrid1.DataSource = rsmahasiswa
With DataGrid1
Call edit_grid
End With
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
txtnim.Text = rsmahasiswa!nim
txtnama.Text = rsmahasiswa!nama
txttempatlahir.Text = rsmahasiswa!t_lahir
txttgllahir.Text = rsmahasiswa!tgl_lahir
cmbjk.Text = rsmahasiswa!jk
txtalamat.Text = rsmahasiswa!alamat
cmbjurusan.Text = rsmahasiswa!jurusan
txttelpon.Text = rsmahasiswa!telpon
Else
MsgBox "data tidak ditemukan", vbInformation, "pesan"
Call segar
End If
End If

End Sub

Private Sub txttelpon_KeyPress(KeyAscii As Integer)
If Not (KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = vbKeyBack Or KeyAscii = vbKeyReturn) Then KeyAscii = 0

End Sub
