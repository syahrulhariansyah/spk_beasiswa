VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form f_daftar 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   10530
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   11535
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10530
   ScaleWidth      =   11535
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0C0C0&
      Height          =   3255
      Left            =   120
      TabIndex        =   18
      Top             =   7200
      Width           =   11295
      Begin MSDataGridLib.DataGrid dgdaftar 
         Height          =   2295
         Left            =   240
         TabIndex        =   43
         Top             =   840
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   4048
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
      Begin VB.CommandButton comadd 
         Caption         =   "ADD"
         Height          =   375
         Left            =   8880
         TabIndex        =   38
         Top             =   240
         Width           =   975
      End
      Begin VB.TextBox txtcari 
         Height          =   375
         Left            =   1920
         TabIndex        =   37
         Top             =   240
         Width           =   6495
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "PENCARIAN"
         Height          =   255
         Left            =   600
         TabIndex        =   20
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "INPUT DATA"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6615
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   11295
      Begin VB.TextBox txtiddaftar 
         Height          =   405
         Left            =   1680
         TabIndex        =   42
         Top             =   240
         Width           =   2415
      End
      Begin VB.ComboBox cmbnim 
         Height          =   315
         Left            =   1680
         TabIndex        =   40
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Command1 
         Caption         =   "BROWSE"
         Height          =   375
         Left            =   4200
         TabIndex        =   39
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox txtsaudara 
         Height          =   375
         Left            =   1680
         TabIndex        =   33
         Top             =   6000
         Width           =   1815
      End
      Begin VB.TextBox txtipk 
         Height          =   375
         Left            =   1680
         TabIndex        =   32
         Top             =   5520
         Width           =   2415
      End
      Begin VB.TextBox txtpendapatan 
         Height          =   375
         Left            =   1680
         TabIndex        =   31
         Top             =   5040
         Width           =   2535
      End
      Begin VB.TextBox txttelpon 
         Enabled         =   0   'False
         Height          =   375
         Left            =   1680
         TabIndex        =   30
         Top             =   4560
         Width           =   2535
      End
      Begin VB.TextBox txtjurusan 
         Enabled         =   0   'False
         Height          =   375
         Left            =   1680
         TabIndex        =   29
         Top             =   4080
         Width           =   3015
      End
      Begin VB.TextBox txtalamat 
         Enabled         =   0   'False
         Height          =   855
         Left            =   1680
         MultiLine       =   -1  'True
         TabIndex        =   28
         Top             =   3120
         Width           =   4335
      End
      Begin VB.TextBox txtjk 
         Enabled         =   0   'False
         Height          =   405
         Left            =   1680
         TabIndex        =   27
         Top             =   2640
         Width           =   2415
      End
      Begin VB.TextBox txttanggallahir 
         Enabled         =   0   'False
         Height          =   375
         Left            =   1680
         TabIndex        =   26
         Top             =   2160
         Width           =   2415
      End
      Begin VB.TextBox txttempatlahir 
         Enabled         =   0   'False
         Height          =   375
         Left            =   1680
         TabIndex        =   25
         Top             =   1680
         Width           =   2535
      End
      Begin VB.TextBox txtnama 
         Enabled         =   0   'False
         Height          =   405
         Left            =   1680
         TabIndex        =   24
         Top             =   1200
         Width           =   3975
      End
      Begin VB.ComboBox cmbtahun 
         Height          =   315
         Left            =   9600
         TabIndex        =   23
         Top             =   720
         Width           =   1575
      End
      Begin VB.ComboBox cmbsemester 
         Height          =   315
         Left            =   7320
         TabIndex        =   22
         Top             =   720
         Width           =   1575
      End
      Begin VB.TextBox txttgl 
         Enabled         =   0   'False
         Height          =   375
         Left            =   7320
         TabIndex        =   21
         Top             =   240
         Width           =   3855
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H00E0E0E0&
         Height          =   3015
         Left            =   8880
         TabIndex        =   19
         Top             =   3240
         Width           =   1935
         Begin VB.CommandButton comsimpan 
            Caption         =   "SIMPAN"
            Height          =   495
            Left            =   480
            TabIndex        =   41
            Top             =   960
            Width           =   975
         End
         Begin VB.CommandButton comhapus 
            Caption         =   "HAPUS"
            Height          =   495
            Left            =   480
            TabIndex        =   36
            Top             =   2400
            Width           =   975
         End
         Begin VB.CommandButton comedit 
            Caption         =   "EDIT"
            Height          =   495
            Left            =   480
            TabIndex        =   35
            Top             =   1680
            Width           =   975
         End
         Begin VB.CommandButton combatal 
            Caption         =   "BATAL"
            Height          =   495
            Left            =   480
            TabIndex        =   34
            Top             =   240
            Width           =   975
         End
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "JUMLAH SAUDARA"
         Height          =   375
         Index           =   11
         Left            =   120
         TabIndex        =   17
         Top             =   6000
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "IPK"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   16
         Top             =   5640
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "PENDAPATAN ORANG TUA"
         Height          =   375
         Index           =   9
         Left            =   120
         TabIndex        =   15
         Top             =   5040
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "TELPON"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   14
         Top             =   4680
         Width           =   735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "JURUSAN"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   13
         Top             =   4200
         Width           =   975
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "ALAMAT"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   12
         Top             =   3240
         Width           =   735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "JENIS KELAMIN"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   11
         Top             =   2760
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "TANGGAL LAHIR"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   10
         Top             =   2280
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "TEMPAT LAHIR"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   9
         Top             =   1800
         Width           =   1215
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "NAMA"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   8
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "NIM"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "TAHUN"
         Height          =   255
         Index           =   1
         Left            =   9000
         TabIndex        =   6
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "SEMESTER"
         Height          =   375
         Index           =   0
         Left            =   6240
         TabIndex        =   5
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "TANGGAL"
         Height          =   255
         Index           =   0
         Left            =   6240
         TabIndex        =   4
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ID DAFTAR"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00808080&
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   11295
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "FORM PENDAFTARAN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   120
         Width           =   9495
      End
   End
End
Attribute VB_Name = "f_daftar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsdaftar As New ADODB.Recordset
Dim rsmahasiswa As New ADODB.Recordset
Dim rscari As New ADODB.Recordset
Sub kodeotomatis()
On Error Resume Next
Set rsdaftar = New ADODB.Connection
Set dgdaftar.DataSource = rsdaftar
rsdaftar.Open ("select*from tb_daftar where id_daftar in(select max(id_daftar)from tb_daftar)order by id_daftar desc"), koneksidb
rsdaftar.Requery

Dim urut As String * 6
Dim hitung As Long
With rsdaftar
 If .EOF Then
 urut = "P" + "0001"
 txtiddaftar = urut
 Else
 
 hitung = Right(Trim(!id_daftar), 4) + 1
 urut = "P" + Right("0000" & hitung, 4)
 
 End If
 txtiddaftar = urut
 End With
End Sub
Private Sub cmbnim_Click()
If rsmahasiswa.State = adStateOpen Then rsmahasiswa.Close
rsmahasiswa.Open " select * from tb_mhs where nim like '%" & cmbnim & "%' ", koneksidb
If Not rsmahasiswa.EOF Then
txtnama.Text = rsmahasiswa!nama
txttempatlahir.Text = rsmahasiswa!t_lahir
txttanggallahir.Text = rsmahasiswa!tgl_lahir
txtjk.Text = rsmahasiswa!jk
txtalamat.Text = rsmahasiswa!alamat
txtjurusan.Text = rsmahasiswa!jurusan
txttelpon.Text = rsmahasiswa!telpon
End If
End Sub

Private Sub combatal_Click()
Call kosong
Call kodeotomatis
End Sub

Private Sub comedit_Click()

koneksidb.Execute "update tb_daftar set semester ='" & cmbsemester & "',tahun ='" & cmbtahun & "',pendapatan='" & txtpendapatan & "',ipk='" & txtipk & "',saudara='" & txtsaudara & "' where id_daftar='" & txtiddaftar & "'"
MsgBox " DATA BERHASIL DIEDIT", vbInformation, "pesan"
Call bukadb
Call tampildata
Call kosong
cmbnim.SetFocus
Call kodeotomatis

End Sub

Private Sub comhapus_Click()
Dim hapus As String
hapus = MsgBox("yakin akan menghapus data ini", vbYesNo, "pesan")
If hapus = vbYes Then
koneksidb.Execute "delete from tb_daftar where id_daftar='" & txtiddaftar & "'"
Call segar
Call kodeotomatis
Call kosong
End If

End Sub

Private Sub Command1_Click()
f_cari.Show
End Sub



Private Sub comsimpan_Click()
On Error Resume Next
    If cmbsemester.Text = "" Then
    MsgBox "masukkan semester", vbExclamation, "pesan"
    cmbsemester.SetFocus
    Exit Sub
    End If
     If cmbtahun.Text = "" Then
    MsgBox "masukkan tahun", vbExclamation, "pesan"
    cmbtahun.SetFocus
    Exit Sub
    End If
     If cmbnim.Text = "" Then
    MsgBox "masukkan nim", vbExclamation, "pesan"
    cmbnim.SetFocus
    Exit Sub
    End If
     If txtpendapatan.Text = "" Then
    MsgBox "masukkan pendapatan", vbExclamation, "pesan"
    txtpendapatan.SetFocus
    Exit Sub
    End If
     If txtipk.Text = "" Then
    MsgBox "masukkan ipk", vbExclamation, "pesan"
    txtipk.SetFocus
    Exit Sub
    End If
     If txtsaudara.Text = "" Then
    MsgBox "masukkan jumlah saudara", vbExclamation, "pesan"
    txtsaudara.SetFocus
    Exit Sub
    End If
koneksidb.Execute "insert into tb_daftar(id_daftar,tgl_daftar,semester,tahun,nim,pendapatan,ipk,saudara) value ('" & txtiddaftar & "','" & Format(CDate(txttgl.Text), "yyyy-mm-dd") & "','" & cmbsemester & "','" & cmbtahun & "','" & cmbnim & "','" & txtpendapatan & "','" & txtipk & "','" & txtsaudara & "')"
MsgBox "DATA TERSIMPAN"
Call tampildata
Call kosong
Call kodeotomatis

End Sub

Private Sub dgdaftar_Click()
txtiddaftar.Text = rsdaftar!id_daftar
cmbnim.Text = rsdaftar!nim
txttgl.Text = Format(rsdaftar!tgl_daftar, "dd mmmm yyyy")
cmbsemester.Text = rsdaftar!semester
cmbtahun.Text = rsdaftar!tahun
txtnama.Text = rsdaftar!nama
txttempatlahir.Text = rsdaftar!t_lahir
txttanggallahir.Text = rsdaftar!tgl_lahir
txtjk.Text = rsdaftar!jk
txtalamat.Text = rsdaftar!alamat
txtjurusan.Text = rsdaftar!jurusan
txttelpon.Text = rsdaftar!telpon
txtpendapatan.Text = rsdaftar!pendapatan
txtipk.Text = rsdaftar!ipk
txtsaudara.Text = rsdaftar!saudara

End Sub

Private Sub Form_Activate()

txttgl.Text = Format(Date, "dd mmmm yyyy")

End Sub
Sub kosong()
cmbsemester.Text = ""
cmbtahun.Text = ""
cmbnim.Text = ""
txtnama.Text = ""
txttempatlahir.Text = ""
txttanggallahir.Text = ""
txtjk.Text = ""
txtalamat.Text = ""
txtjurusan.Text = ""
txttelpon.Text = ""
txtpendapatan.Text = ""
txtipk.Text = ""
txtsaudara.Text = ""

End Sub
Sub isicombo()
Dim i As Integer
cmbsemester.Clear
For i = 1 To 6
    cmbsemester.AddItem "Semester" & i
    Next
   cmbtahun.Clear
   For i = Year(Date) To 1990 Step -1
   cmbtahun.AddItem (i)
   Next
End Sub

Private Sub Form_Load()
Call bukadb
If rsmahasiswa.State = adStateOpen Then rsmahasiswa.Close
rsmahasiswa.Open "select nim from tb_mhs", koneksidb
Do While Not rsmahasiswa.EOF
cmbnim.AddItem rsmahasiswa!nim
rsmahasiswa.MoveNext
Loop
Call kodeotomatis
Call isicombo
Call tampildata
Set dgdaftar.DataSource = rsdaftar
With dgdaftar
Call edit_grid
End With
Call edit_grid
Call segar
End Sub


Private Sub txtpendapatan_KeyPress(KeyAscii As Integer)
If Not (KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = vbKeyBack Or KeyAscii = vbKeyReturn) Then KeyAscii = 0

End Sub

Private Sub txtsaudara_KeyPress(KeyAscii As Integer)
If Not (KeyAscii >= Asc("0") And KeyAscii <= Asc("9") Or KeyAscii = vbKeyBack Or KeyAscii = vbKeyReturn) Then KeyAscii = 0

End Sub
Sub tampildata()
Set rsdaftar = New ADODB.Recordset
rsdaftar.ActiveConnection = koneksidb
rsdaftar.CursorLocation = adUseClient
rsdaftar.LockType = adLockOptimistic
rsdaftar.Source = "select * from tb_vdaftar order by id_daftar desc"
rsdaftar.Open
End Sub
Sub segar()
Call bukadb
Call tampildata
Set dgdaftar.DataSource = rsdaftar
With dgdaftar
Call edit_grid
End With
End Sub

Sub edit_grid()
With dgdaftar
    .Columns(0).Caption = "Id Daftar"
    .Columns(1).Caption = "Tangggal Daftar "
    .Columns(2).Caption = "Semester"
    .Columns(3).Caption = "Tahun"
    .Columns(4).Caption = "NIM"
    .Columns(5).Caption = "Nama"
    .Columns(6).Caption = "Tempat Lahir"
    .Columns(7).Caption = "Tanggal Lahir "
    .Columns(8).Caption = "Jenis Kelamin"
    .Columns(9).Caption = "Alamat"
    .Columns(10).Caption = "Jurusan"
    .Columns(11).Caption = "Telpon"
    .Columns(12).Caption = "Pendapatan"
    .Columns(13).Caption = "IPK"
    .Columns(14).Caption = "Saudara"

    .Columns(0).Width = 1200
    .Columns(1).Width = 2000
    .Columns(2).Width = 2000
    .Columns(3).Width = 1200
    .Columns(4).Width = 2000
    .Columns(5).Width = 1200
    .Columns(6).Width = 1200
    .Columns(7).Width = 2000
    .Columns(8).Width = 2000
    .Columns(9).Width = 1200
    .Columns(10).Width = 2000
    .Columns(11).Width = 1200
    .Columns(12).Width = 1200
    .Columns(13).Width = 2000
    .Columns(14).Width = 1200
    End With
End Sub
