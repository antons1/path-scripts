$wifiName = "Wi-Fi 2";
$ethName = "Ethernet";
$interface = $args[0];

Write-Host "=== Before  change ===";
Get-NetAdapter;
Write-Host "===                ===";
Write-Host "";

If ($interface -eq "wifi") {
    Disable-NetAdapter -Name $ethName -Confirm:$false;
    Enable-NetAdapter -Name $wifiName -Confirm:$false;
} Elseif ($interface -eq "eth") {
    Disable-NetAdapter -Name $wifiName -Confirm:$false;
    Enable-NetAdapter -Name $ethName -Confirm:$false;
} Else {
    Enable-NetAdapter -Name $wifiName -Confirm:$false;
    Enable-NetAdapter -Name $ethName -Confirm:$false;
}

Write-Host "===  After change  ===";
Get-NetAdapter;
Write-Host "===                ===";
Write-Host "";