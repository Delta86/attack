$path = 'C:\';
$files = Get-ChildItem -Path $path -Recurse -Depth 3 -ErrorAction SilentlyContinue | select -expand fullname;
$extensions = @('doc', 'xls', 'pdf', 'txt', 'jpg', 'jpeg');

Write-Host "JUST A DEMO";
Write-Host "Hope you have a backup copy of those files?`r`n"
foreach ($file in $files) {
   foreach ($extension in $extensions) {
      if ($file.EndsWith($extension)) {
         Write-Host -NoNewline "Encrypting file:", $file, " ";
         for ($num = 1 ; $num -le 5 ; $num++) { Write-Host -NoNewline ".."; sleep 1;}
         Write-Host " DONE!!!";
      }
   }
}
