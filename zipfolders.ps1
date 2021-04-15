"Folder Zip version 2 - created by Cody Simmons"
#Updated to point to local wzzip install, fixed issues with command line WZip

$wzLocation = 'C:\Program Files\Winzip.exe'

$lines = dir -Directory
foreach ($line in $lines) {
  $fields = $line -split '\s+'
  $zipfolder = $fields & $wzLocation -p -r "$zipfolder.zip" "./$zipfolder" >> zipOutput.log
  'Done with " + $line 
}

write-Host 'Zipping folders complete! Check zipOutput.log for more info. Press any key to exit."
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
