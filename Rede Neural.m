clc
clear

%Matriz com as coordenadas (x,y) dos pontos
input = [1 2 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 2 3;
   	     1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 5 5];
     
%Classificação dos ponto em grupo
target = [0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1];

%Criação da Rede e set dos parâmetro conforme especificado
net = newff(input,target,2);
net.divideParam.trainRatio = 1.0;
net.divideParam.valRatio = 0.0;
net.divideParam.testRatio = 0.0;

%Treino da Rede
net = train (net, input, target);

%Simulação
Trede = sim (net,input);

%Resultado na Matriz de Confusão
plotconfusion(target,Trede);
