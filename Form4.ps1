Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
[Windows.Forms.Application]::EnableVisualStyles()

#
#Form4
#
$Form4 = New-Object System.Windows.Forms.Form
$Form4.Text = ".:: Transparência e o uso da Trackbar ::."
$Form4.ClientSize = New-Object System.Drawing.Size(584, 366)
$Form4.BackColor = "Gray"
$Form4.StartPosition = "CenterScreen"
#
#Label_Titulo_1
#
$Label_Titulo_1 = New-Object System.Windows.Forms.Label
$Label_Titulo_1.Font = New-Object System.Drawing.Font("Verdana", 20, [System.Drawing.FontStyle]::Bold)
$Label_Titulo_1.Text = "Powershell GUI"
$Label_Titulo_1.Size = New-Object System.Drawing.Size(250, 60)
$Label_Titulo_1.Location = New-Object System.Drawing.Point(154, 88)
$Form4.Controls.Add($Label_Titulo_1)

#
#Label_Titulo_2
#
$Label_Titulo_2 = New-Object System.Windows.Forms.Label
$Label_Titulo_2.Font = New-Object System.Drawing.Font("Calibri", 16, [System.Drawing.FontStyle]::Bold)
$Label_Titulo_2.Text = "Jornada pela interface gráfica"
$Label_Titulo_2.Size = New-Object System.Drawing.Size(280, 40)
$Label_Titulo_2.Location = New-Object System.Drawing.Point(146, 167)
$Form4.Controls.Add($Label_Titulo_2)

#
#Trackbar
#
$TrackbarTransp = New-Object System.Windows.Forms.Trackbar
$TrackbarTransp.Size = New-Object System.Drawing.Size(80, 30)
$TrackbarTransp.Location = New-Object System.Drawing.Point(240, 272)
$TrackbarTransp.Minimum = 5;
$TrackbarTransp.Maximum = 10;
$TrackbarTransp.Value = 10;
$TrackbarTransp.SmallChange = 1;
$TrackbarTransp.LargeChange = 2;
$TrackbarTransp.TickFrequency = 1;
$TrackbarTransp.add_ValueChanged({
        $Form4.Opacity = $TrackbarTransp.Value / 10 ## $Form4.Opacity (0.0 a 1.0), sendo 1.0 mais opaco, i.e., menos transparente
        })
$Form4.Controls.Add($TrackbarTransp)

#
#Label_Transp
#
$Label_Transp = New-Object System.Windows.Forms.Label
$Label_Transp.Font = New-Object System.Drawing.Font("Calibri", 11, [System.Drawing.FontStyle]::Bold)
$Label_Transp.Text = "+ Transparência -"
$Label_Transp.Location = New-Object System.Drawing.Point(230, 250)
$Label_Transp.AutoSize = $true
$Form4.Controls.Add($Label_Transp)

[void]$Form4.ShowDialog()

