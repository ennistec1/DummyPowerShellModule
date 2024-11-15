
function Get-ModuleInfo {
    $module = Get-Module -Name $MyInvocation.MyCommand.Module
    [PSCustomObject]@{
        Name     = $module.Name
        Location = $module.Path
        Version  = $module.Version.ToString()
    }
}
Export-ModuleMember -Function Get-ModuleInfo
