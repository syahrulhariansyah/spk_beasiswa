VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form f_nilai 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "FORM  REKOMENDASI PENERIMA  BEASISWA"
   ClientHeight    =   6900
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14445
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6900
   ScaleWidth      =   14445
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H00404000&
      Height          =   6015
      Left            =   0
      TabIndex        =   2
      Top             =   720
      Width           =   14415
      Begin MSDataGridLib.DataGrid dgnilai 
         Height          =   4335
         Left            =   240
         TabIndex        =   12
         Top             =   1200
         Width           =   13935
         _ExtentX        =   24580
         _ExtentY        =   7646
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
      Begin VB.CommandButton cmdkeluar 
         Caption         =   "KELUAR"
         Height          =   375
         Left            =   12960
         TabIndex        =   11
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdhapus 
         Caption         =   "HAPUS"
         Height          =   375
         Left            =   11400
         TabIndex        =   10
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdclear 
         Caption         =   "CLEAR"
         Height          =   375
         Left            =   9840
         TabIndex        =   9
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdcari 
         Caption         =   "CARI"
         Height          =   375
         Left            =   8280
         TabIndex        =   8
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdproses 
         Caption         =   "PROSES"
         Height          =   375
         Left            =   6840
         TabIndex        =   7
         Top             =   240
         Width           =   975
      End
      Begin VB.ComboBox cmbtahun 
         Height          =   315
         Left            =   4560
         TabIndex        =   6
         Top             =   240
         Width           =   1575
      End
      Begin VB.ComboBox cmbsemester 
         Height          =   315
         Left            =   1320
         TabIndex        =   3
         Top             =   240
         Width           =   2055
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "TAHUN"
         ForeColor       =   &H8000000B&
         Height          =   375
         Left            =   3720
         TabIndex        =   5
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "SEMESTER"
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00404000&
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   14415
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "FORM REKOMENDASI PENERIMA BEASISWA"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFC0&
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   13815
      End
   End
End
Attribute VB_Name = "f_nilai"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsdaftar As New ADODB.Recordset
Dim rsmahasiswa As New ADODB.Recordset
Dim rsnilai As New ADODB.Recordset
Dim pendapatan, ipk, saudara As Single
Dim mpendapatan, mipk, msaudara As Single
Dim npendapatan, nipk, nsaudara As Single
Dim preferensi As Single
Dim idnilai, iddaftar As String



Sub tampildata2()
Set rsnilai = New ADODB.Recordset
rsnilai.ActiveConnection = koneksidb
rsnilai.CursorLocation = adUseClient
rsnilai.LockType = adLockOptimistic
rsnilai.Source = "select * from vnilai order by id_nilai desc"
rsnilai.Open
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
Sub segar()
Call bukadb
Call tampildata
Set dgnilai.DataSource = rsnilai
With dgnilai
Call edit_grid
End With
End Sub
Sub edit_grid()
With dgnilai
    .Columns(0).Caption = "Id Nilai"
    .Columns(1).Caption = "Id Daftar "
    .Columns(2).Caption = "Tanggal Daftar"
    .Columns(3).Caption = "Semester"
    .Columns(4).Caption = "tahun"
    .Columns(5).Caption = "Nim"
    .Columns(6).Caption = "Nama"
    .Columns(7).Caption = "Pendapatan"
    .Columns(8).Caption = "Ipk"
    .Columns(9).Caption = "saudara "
    .Columns(10).Caption = "nPendapatan"
    .Columns(11).Caption = "nIpk"
    .Columns(12).Caption = "nSaudara"
    .Columns(13).Caption = "preferensi"
    .Columns(0).Width = 1000
    .Columns(1).Width = 1000
    .Columns(2).Width = 1000
    .Columns(3).Width = 1000
    .Columns(4).Width = 1000
    .Columns(5).Width = 1000
    .Columns(6).Width = 2000
    .Columns(7).Width = 1200
    .Columns(8).Width = 1000
    .Columns(9).Width = 1000
    .Columns(10).Width = 1500
    .Columns(11).Width = 1000
    .Columns(12).Width = 1200
    .Columns(13).Width = 1200
End With
End Sub

Sub kodeotomatis()
Set rsnilai = New ADODB.Connection
Set rsnilai.DataSource = rsnilai
rsdaftar.Open ("select*from tb_nilai where id_nilai in(select max(id_nilai)from tb_nilai)order by id_nilai desc"), koneksidb
rsdaftar.Requery

Dim urut As String * 5
Dim hitung As Long
With rsnilai
 If .EOF Then
 urut = "00001"
 idnilai = urut
 Else
 
 hitung = Right(!id_daftar, 5) + 1
 urut = Right("0000" & hitung, 5)
 
 End If
 idnilai = urut
 End With
End Sub

Private Sub cmdkeluar_Click()
Unload Me
End Sub
Sub tampildata()
Set rsdaftar = New ADODB.Recordset
rsdaftar.ActiveConnection = koneksidb
rsdaftar.CursorLocation = adUseClient
rsdaftar.LockType = adLockOptimistic
rsdaftar.Source = "select * from tb_vdaftar order by id_daftar desc"
rsdaftar.Open
End Sub
Private Sub cmdproses_Click()

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
    
Set rsnilai = New ADODB.Recordset
rsnilai.Open "select * from vnilai where semester='" & cmbsemester.Text & "' and tahun='" & cmbtahun.Text & "'", koneksidb
If Not rsnilai.EOF Then
MsgBox "Data Sudah Diproses", vbCritical, "pesan"
Exit Sub
End If



    If rsdaftar.State = adStateOpen Then rsdaftar.Close
rsdaftar.Open " select * from tb_daftar where semester='" & cmbsemester.Text & "' and tahun='" & cmbtahun.Text & "'", koneksidb

If Not rsdaftar.EOF Then
iddaftar = rsdaftar!id_daftar
pendapatan = rsdaftar!pendapatan
ipk = rsdaftar!ipk
saudara = rsdaftar!saudara

    If rsdaftar.State = adStateOpen Then rsdaftar.Close
rsdaftar.Open " select min(pendapatan),max(ipk),max(saudara) from tb_daftar where semester='" & cmbsemester.Text & "' and tahun='" & cmbtahun.Text & "'", koneksidb
If Not rsnilai.EOF Then

mpendapatan = rsnilai!Min(pendapatan)
mipk = rsnilai!Max(ipk)
msaudara = rsnilai!Max(saudara)
Exit Sub
End If


    npendapatan = mpendapatan / pendapatan
    nipk = ipk / mipk
    nsaudara = saudara / msaudara
    
       preferensi = (0.5 * npendapatan) + (0.3 * nipk) + (0.2 * nsaudara)
       
       Call kodeotomatis
       
koneksidb.Execute "insert into tb_nilai value ('" & id_nilai & "','" & id_daftar & "','" & n_pendapatan & "','" & n_ipk & "','" & n_saudara & "','" & preferensi & "')"
        
        
        Call segar
        
Else
 MsgBox "data pendaftaran belum ada", vbExclamation, "pesan"
End If
End Sub



Private Sub Form_Load()
Call bukadb
Call isicombo
Call tampildata2
Set dgnilai.DataSource = rsnilai
With dgnilai
End With
End Sub

