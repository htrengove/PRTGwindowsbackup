# PRTGwindowsbackup
Powershell script for EXE/ADV sensor for PRTG, used to monitor Windows Backups

- Copy the file to your PRTG installation under the Custom Sensors then EXE/Advanced
- Create a new sensor on your desired Device, EXE/ADV select the script wbackupcheck.ps1
    Note: the script will use the device name or you can set the FQDN in the parameters field
- Create your schedule and ensure the use Credentials from parent is select not the Probe
- Setup your notifications and tolerances
  Note: "0" is a successful backup else is either a warning or failed backup
