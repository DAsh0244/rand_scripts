<#
   updates the currrent folder if its a github repo. expects to be in a sub folder tree like so:
   |-- git_repo
   | |-- sub_dir_1
   |   |-- sub_dir_2
   |     |--update.ps1 
#>
$chkstr = "up-to-date"
# $startup_path = $((Get-Item -Path ".\\" -Verbose).FullName)
# cd ..\..
echo "checking update status..."
git remote update >$null
if (!($(git status | Select-String $chkstr) -Match $chkstr))
{
    if ($(Read-Host -Prompt "updates available. Update now? (y/n)").trim() -Match "y")
    {
        git pull
    }
}
else
{
    echo "up to date`r`n"
}
# cd $startup_path
exit
