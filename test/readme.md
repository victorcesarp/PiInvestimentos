Steps:

1° Clique no link, faça o download da última versão estável e instale o Ruby na máquina: https://rubyinstaller.org/downloads/
2° Instale o bundler: gem install bundler
3° Clone o projeto em uma pasta do PC/Notebook de sua preferência: git clone https://github.com/victorcesarp/PiInvestimentos.git
4º Execute o comando no terminal: bundle install
5º Execute o comando no terminal: cucumber (no windows) ou bundle exec cucumber(no linux/Mac)
6º Para executar somente cenários especificos, use o comando "cucumber -t" + a tag do cenário. Ex.: cucumber -t @consultasucesso