clc
clear

%Matriz com as coordenadas (x,y) dos pontos
input = [1 2 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 2 3;
   	     1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 5 5];
     
%Classifica��o dos ponto em grupo
target = [0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1];

%Cria��o da Rede e set dos par�metro conforme especificado
net = newff(input,target,2);
net.divideParam.trainRatio = 1.0;
net.divideParam.valRatio = 0.0;
net.divideParam.testRatio = 0.0;

%Treino da Rede
net = train (net, input, target);

%Simula��o
Trede = sim (net,input);

%Resultado na Matriz de Confus�o
plotconfusion(target,Trede);
