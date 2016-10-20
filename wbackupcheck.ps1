$DEVICE=$args[0]
#checkBackups
$BackupStatus = Invoke-Command -Computername $DEVICE -ScriptBlock { Get-WBSummary }

"<prtg>"
"<result>"   
"<channel>"
"BackupStatus"
"</channel>"
"<value>"
echo $BackupStatus.LastBackupResultHR
"</value>"
"</result>"
"<text>"
echo "Last Successful Backup: $($BackupStatus.LastSuccessfulBackupTime)"
"</text>"
"</prtg>"