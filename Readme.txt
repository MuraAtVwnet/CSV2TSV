■ これは何?
CSV ファイルを TSV ファイルにコンバートするスクリプトです

■ 実行方法
スクリプトをインストールしたら、、以下コマンドを PowerShell プロンプトで実行すると、読み込む CSV ファイルを選択するダイアログが表示されます
出力する TSV ファイルは、CSV と同じディレクトリに .tsv が出力されます

CSV2TSV

(csv2[TAB] でコマンド補完されます)


■ 動作確認環境

Windows PowerShell 5.1
PowerShell 7.4.5 (Windows)
たぶん Mac Linux でも動くはず

Windows Powershell の場合、スクリプトの実行許可が必要なので、以下コマンドで許可状態を確認して下さい

Get-ExecutionPolicy

結果が、「RemoteSigned」になっていないかったら、以下コマンドを入力(1回のみ)

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force


■ オプション

CSV2TSV の後に、ハイフンを入力して TAB を叩くと、オプションが補完されるのて、必要オプションを選択してください

CSV2TSV -[TAB]

-UTF8

UTF8 の CSV ファイルを読み込む場合に指定
(SJIS 時には指定不要)


-VertionCheck

最新版のスクリプトがあるか確認します
最新版があれば、自動ダウンロード & 更新します


■ GitHub

以下リポジトリで公開しています
https://github.com/MuraAtVwnet/CSV2TSV
git@github.com:MuraAtVwnet/CSV2TSV.git


■ Web Page

PowerShell でデータを TSV 出力する
https://www.vwnet.jp/Windows/PowerShell/2023090701/TSVbyPowerShell7.htm


■ スクリプトインストール方法

# 以下を PowerShell プロンプトにコピペ

$ModuleName = "CSV2TSV"
$GitHubName = "MuraAtVwnet"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/$GitHubName/$ModuleName/master/OnlineInstall.ps1 -OutFile ~/OnlineInstall.ps1
& ~/OnlineInstall.ps1




