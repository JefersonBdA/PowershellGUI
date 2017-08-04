#POWERSHELL GUI
#Inicialmente, são necessárias algumas diretivas assembly

# Windows Forms: permite criar o Form
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

## System Drawing: permite 'desenhar o Form' na tela.
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#Vamos habilitar estilos visuais - tema do sistema operacional
#Como: cores, fontes, etc
[System.Windows.Forms.Application]::EnableVisualStyles() 

#Instanciar objeto Windows.Forms para criação do Form
$Form1 = New-Object System.Windows.Forms.Form 

## Criamos uma janela 600x480
$Form1.ClientSize = New-Object System.Drawing.Size(600,480) 

#Criamos Form fixo, que não irá permitir redimensionamento
$Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedToolWindow  ## FixedToolWindow

#Título da janela
$Form1.Text = ".::. Meu Primeiro Form no Powershell .::."  ##Este texto irá aparececer no título da janela

#Cria o Form no centro da tela, não importando a resolução do monitor
$Form1.StartPosition = "CenterScreen"

#Executa o Form1
[System.Windows.Forms.Application]::Run($Form1)  ## Run($Form1)

