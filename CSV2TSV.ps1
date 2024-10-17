# Input Data
Add-Type -assemblyName System.Windows.Forms

$dialog = New-Object System.Windows.Forms.OpenFileDialog

$dialog.Filter = "CSV Files|*.csv|All Files|*.*"

$dialog.Title = "TSV コンバートするファイルを選択してください"

if ($dialog.ShowDialog() -ne  [System.Windows.Forms.DialogResult]::OK) {
	echo "処理をキャンセルしました"
	exit
}

$CsvFileFullPath = $dialog.FileName

$dialog.Dispose()


$CSVDatas = Import-Csv $CsvFileFullPath -Encoding oem


$TSVFileFullPath = $CsvFileFullPath + ".tsv"

$CSVDatas | Export-Csv $TSVFileFullPath -Delimiter "`t" -UseQuotes Never

