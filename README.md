# Exemplo de automação desktop utilizando Robot Framework

## Descrição

Este repositório contem um exemplo de automação desktop utilizando o Robot Framework, que é um framework de automação open source com base em Python. 
A biblioteca que iremos utilizar para essa automação é a [FlaUI](https://github.com/GDATASoftwareAG/robotframework-flaui), para mais detalhes, 
segue a [documentação](https://gdatasoftwareag.github.io/robotframework-flaui/) com as keywords, exemplos de xpath, etc.

Estrutura do projeto:

+ app
  + MyCRM.exe - Programa demo para prática de testes desktop
  + FlaUInspector - Pasta com programa que iremos utilizar para fazer o mapeamento dos elementos
+ features
  + Arquivos de execução do teste escritos em BDD
+ pages
  + Arquivos contendo os mapeamentos das páginas
+ resource
  + Arquivos de configuração do projeto
+ steps
  + Arquivos contendo o código do projeto e o passo a passo das execuções
+ requirements.txt - Arquivo para instalação das dependências


## Pré requisitos

* Python 3.7 - 3.10
* Robot Framework
* Editor de texto de sua preferência (PyCharm, VsCode, etc.)


## Instalação

#### Python
Baixe o Python [neste link](https://www.python.org/downloads/) e faça a instalação. Lembre se de marcar a opção de configurar o PATH automaticamente. Lembrando também que essa versão do projeto só suporta o Python da versão 3.7.x até 3.10.x.

Outro detalhe: caso você tenha mais de uma versão do Python instalada, verifique que a versão compatível esteja configurada nas variáveis de ambiente e esteja acima das demais.

#### Robot Framework

Tendo o Python instalado, digite o comando abaixo em um terminal para instalar o Robot Framework:

    pip install robotframework


## Execução do projeto

* Clone o projeto ou baixe como ZIP e extraia para uma pasta de sua escolha. Após isso, abra o projeto com um editor de sua preferência.
* Instale os requirimentos do projeto com o comando abaixo atravéz de um terminal:

      pip install -r requirements.txt

* Com o terminal na pasta raiz do projeto, utilize o comando abaixo para executar o teste:

      robot .\features\desktop.robot
Obs: Caso apareça uma mensagem pedindo a instalação de componentes adicionais, apenas prossiga com a instalação até o final e depois execute o comando novamente.


## Mapeamento dos elementos

Para fazer o scan dos elementos, iremos utilizar a ferramenta [FlaUInspect](https://github.com/FlaUI/FlaUInspect). Essa ferramenta já está dentro do projeto, na pasta *app/FlaUInspector*

Ao abrir o programa, selecione a opção **UIA3** para conseguirmos mapear os elemento utilizando XPath, pois a biblioteca que iremos utilizar só suporta XPath como locators.

Com o programa aberto, podemos escolher diferentes modos para scan na aba ```Mode```.

| Mode | Descrição |
| ---- | ----------- |
| Hover Mode | Ative esse modo para selecionar o elemento ao passar o mouse por cima e pressionar Control |
| Focus Tracking | Ative esse modo para selecionar o elemento que está atualmente em foco, seja por clique ou outro método |
| Show XPath | Ative esse modo para exibir o xPath do elemento em foco no canto inferior esquerdo do FlaUInspect |

**Obs: Após escolher o modo e deixar o elemento desejado em foco, sempre desabilite o modo selecionado para evitar problemas ao navegar em outras telas, já que o FlaUInspect é capaz de inspecionar todas as telas abertas no seu PC.**

Com o elemento que deseja mapear em foco, copie o XPath exibido no canto inferior esquerdo (ex: ```/Window/Tab/Pane/Group[1]/Edit[2]```), e o utilize como locator nos seus testes.
