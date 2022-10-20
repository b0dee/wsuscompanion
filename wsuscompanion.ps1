#region Global Variables
$versionMajor = 0
$versionMinor = 0
$versionHotfix = 0
$versionString = "$($versionMajor).$($versionMinor).$($versionHotfix).$($versionBuild)"
#endregion Global Variables

#region User Interface
#region Assembly Linking
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName PresentationFramework
#endregion Assembly Linking

#region Root Form
#endregion Root Form

#region Updates
#endregion Updates

#region Maintenance
# [checkbox] Delete declined updates
# [checkbox] Delete superceded updates
# [listbox] Phrases if found in updates should be declined
#endregion Maintenance

#region Settings
#endregion Settings

#endregion User Interface

