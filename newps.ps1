Add-Type –AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNoCancel
$MessageIcon = [System.Windows.MessageBoxImage]::Exclamation
$MessageBody = "In order to complete setup, Windows needs to restart. Click Yes to restart now or No if you plan to restart later."
$MessageTitle = "Cloudwyse Set-up Completion"
$ButtonType2 = [System.Windows.MessageBoxButton]::OK
$MessageIcon2 = [System.Windows.MessageBoxImage]::Error
$MessageBody2 = "The system will not operate correctly until a restart is completed. Remember to restart ASAP!"
$MessageTitle2 = "WARNING!!"
$Choice = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
If ($Choice –eq "No" –OR $Choice –eq "Cancel") {
[System.Windows.MessageBox]::Show($MessageBody2,$MessageTitle2,$ButtonType2,$MessageIcon2)
} Else {
Restart-Computer
}