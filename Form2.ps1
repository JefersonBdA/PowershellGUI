
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[System.Windows.Forms.Application]::EnableVisualStyles() 

$Form2 = New-Object System.Windows.Forms.Form 
$Form2.ClientSize = New-Object System.Drawing.Size(600,480) 
$Form2.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedToolWindow
$Form2.Text = ".::. System Windows Forms - Controls .::."
$Form2.StartPosition = "CenterScreen"

#Cria um Botão
$Botao_OK = New-Object System.Windows.Forms.Button
$Botao_OK.Width=40
$Botao_OK.Height=40
$Botao_OK_X = ($Form2.ClientSize.Width/2)-($Botao_OK.Width/2) #Centralizar Horizontalmente
$Botao_OK_Y = ($Form2.ClientSize.Height/2)-($Botao_OK.Height/2) #Centralizar Verticalmente
$Botao_OK.Location = New-Object System.Drawing.Size($Botao_OK_X, $Botao_OK_Y) #Centralizar o botão
$Botao_OK.Text = "OK"

#Cria uma CheckBox
$CheckBox_Selecionar = New-Object System.Windows.Forms.CheckBox
$CheckBox_Selecionar.Text = "Selecionar"
$CheckBox_Selecionar.Location = New-Object System.Drawing.Size(400, 20)

#Cria um Label
$Label_Hello = New-Object System.Windows.Forms.Label
$Label_Hello.Text = "Hello World"
$Label_Hello.Font = New-Object System.Drawing.Font("Times New Roman",16,[System.Drawing.FontStyle]::Italic)
# Font styles are: Regular, Bold, Italic, Underline, Strikeout
$Label_Hello_X = ($Form2.ClientSize.Width/2) - ($Label_Hello.Width/2)
$Label_Hello.Location = New-Object System.Drawing.Size($Label_Hello_X, 100)$Label_Hello.AutoSize = $true#Cria uma ListBox
$ListBox_Nomes = New-Object System.Windows.Forms.ListBox
$ListBox_Nomes.Name = "ListBox_Nomes"
$ListBox_Nomes.Width = 200
$ListBox_Nomes.Height = 100
$ListBox_Nomes.Location = New-Object System.Drawing.Size(10, 10)

#Cria uma ComboBox
$ComboBox_Carros = New-Object System.Windows.Forms.ComboBox
$ComboBox_Carros.Name = "ComboBox_Carros"
$ComboBox_Carros.Width = 200
$ComboBox_Carros.Height = 100
$ComboBox_Carros.Location = New-Object System.Drawing.Size(10, 300)

#Adiciona Controles no Form
$Form2.Controls.Add($Botao_OK)$Form2.Controls.Add($Label_Hello)
$Form2.Controls.Add($ListBox_Nomes)
$Form2.Controls.Add($ComboBox_Carros)
$Form2.Controls.Add($CheckBox_Selecionar)

#Adiciona itens na ListBox
$Form2.Controls["ListBox_Nomes"].Items.Add("Mozart")
$Form2.Controls["ListBox_Nomes"].Items.Add("Bach")
$Form2.Controls["ListBox_Nomes"].Items.Add("Beethoven")

#Adiciona itens na ComboBox
$Form2.Controls["ComboBox_Carros"].Items.Add("Ferrari")
$Form2.Controls["ComboBox_Carros"].Items.Add("Audi")
$Form2.Controls["ComboBox_Carros"].Items.Add("BMW")

#Executa o Form2
[System.Windows.Forms.Application]::Run($Form2)