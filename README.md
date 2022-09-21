# MEC UI
## Model Evaluations Comparator User Interface

### Instalação dos executáveis
- Abra um terminal e vá no diretório raiz sob o qual o MEC-UI será instalado
- git clone https://github.com/Garcia-INPE/MEC-UI

### Criação do ambiente com os pacotes "R" necessários para executar o MEC-UI (interface)
- Recomendo usar o miniconda (https://docs.conda.io/en/latest/miniconda.html)
- Após sua instalação digitar os comandos abaixo no terminal

conda create -n MEC-UI
conda activate MEC-UI
conda install -c conda-forge r-shiny r-ggplot2 r-psychometric r-colorspace r-data.table r-maps r-plotrix r-sf r-shinyWidgets r-shinydashboard r-shinythemes r-RColorBrewer r-viridis r-pryr


### Download dos dados da avaliação
- Edite o script ./Get_MEC-PRE.ksh de acordo com seus dados de login e diretórios em que a avaliação foi gerada na servidora (p.e. Itapemirim)
- Execute o script ./Get_MEC-PRE.ksh


### Execução
- Ainda no terminal, ir no diretório raiz do MEC-UI e executar o script ./MEC-UI.sh

O terminal mostrará uma URL, copie essa URL no navegador 

### e voilà!


