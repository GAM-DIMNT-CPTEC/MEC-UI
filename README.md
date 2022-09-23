# MEC-UI
## Model Evaluations Comparator GUI (Graphical User Interface)

### Consists of two parts

### 1) The MEC-PRE, which is a set of shell scripts, GrADS scripts and CDO commands that preprocess model and the corresponding observational raw data in order to convert them to a common spatial and temporal domain to be the input of a set of R scripts that are responsible to perform the model evaluation itself. MEC-PRE is available at https://github.com/Garcia-INPE/MEC-PRE.

### 2) The MEC-GUI, a GUI (Graphical User Interface) coded in R to visualize the evaluation. This tool is independent of the preprocessing part, due to it uses ordinary ASCII files as input, which means that evaluation results can be generated using any software. 

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


