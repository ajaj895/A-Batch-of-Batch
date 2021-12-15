if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))  
{  
  $arguments = "& '" +$myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

Mount-DiskImage -ImagePath "[Insert path to iso here]"
Write-Host "20H2 Mounted! Now installing .NET..."
cmd /c 'pause'
cmd /c 'Dism /online /enable-feature /featurename:NetFx3 /All /Source:d:\sources\sxs /LimitAccess'
Write-Host ".Net installed! Program will now exit..."
cmd /c 'pause'