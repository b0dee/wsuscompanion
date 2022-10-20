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

#region Variable Declarations
$defaultWindowWidth = 1648
$defaultWindowHeight = 720
$defaultButtonWidth = 75
$defaultButtonHeight = 25
$padding = 21
#endregion

#region Helper Functions
#endregion Helper Functions

#region Root Form
$root = New-Object System.Windows.Forms.Form
$root.Text = "WSUS Companion $($versionString)"
$root.AutoSize = $true
$root.StartPosition = 'CenterScreen'
#region Tab Control
$rootTab = New-Object System.Windows.Forms.TabControl
$rootTab.AutoSize = $true
$rootTab.Location = New-Object System.Drawing.Point(0,($padding))
#endregion
#region Menu Strip
$rootMenuStrip = New-Object System.Windows.Forms.MenuStrip
#region File
$rootMenuFile = New-Object System.Windows.Forms.ToolStripMenuItem
$rootMenuFile.Name = "File"
$rootMenuFile.Text = "File"
#endregion File

#region File Dropdown
#region Settings
$rootMenuFileSettings = New-Object System.Windows.Forms.ToolStripMenuItem
$rootMenuFileSettings.Name = "Settings"
$rootMenuFileSettings.Text = "Settings"
$rootMenuFile.DropDownItems.Add($rootMenuFileSettings)
#endregion Settings

#endregion File Dropdown

#region Help
$rootMenuHelp = New-Object System.Windows.Forms.ToolStripMenuItem
$rootMenuHelp.Name = "Help"
$rootMenuHelp.Text = "Help"
$rootMenuHelp.Add_Click({[system.Diagnostics.Process]::start("https://github.com/b0dee/wsuscompanion")})
#endregion Help

#region About
$rootMenuAbout = New-Object System.Windows.Forms.ToolStripMenuItem
$rootMenuAbout.Name = "About"
$rootMenuAbout.Text = "About"
#endregion About

#region Add Menu Items to Root Menu Strip
$rootMenuStrip.Items.Add($rootMenuFile)
$rootMenuStrip.Items.Add($rootMenuHelp)
$rootMenuStrip.Items.Add($rootMenuAbout)
#endregion Add Menu Items to Root Menu Strip
#endregion Root Form

#region Updates
$updateTab = New-Object System.Windows.Forms.TabPage
$updateTab.Text = "Updates"
$rootTab.Controls.Add($updateTab) # Add tab to root tab control
#endregion Updates

#region Maintenance
$maintenanceTab = New-Object System.Windows.Forms.TabPage
$maintenanceTab.Text = "Maintenance"
$rootTab.Controls.Add($maintenanceTab)
# [checkbox] Delete declined updates
# [checkbox] Delete superceded updates
# [listbox] Phrases if found in updates should be declined
#endregion Maintenance

#region Settings
#endregion Settings

#region Add elements to form
$root.Controls.Add($rootMenuStrip)
$root.Controls.Add($rootTab)
#endregion

#region Display form
$root.Topmost = $true
$result = $root.ShowDialog()
#endregion
#endregion User Interface

