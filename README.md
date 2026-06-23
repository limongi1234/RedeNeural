# RedeNeural 🧠

Implementação de uma **rede neural feedforward** em **MATLAB** para um problema de **classificação binária de pontos 2D**. A rede aprende a separar um conjunto de coordenadas `(x, y)` em dois grupos distintos.

## 💡 O que faz

- Define um conjunto de pontos no plano (coordenadas `x, y`) e seus rótulos (grupo 0 ou 1)
- Cria uma rede neural feedforward (`newff`) com camada oculta
- Treina a rede usando 100% dos dados para treino
- Simula a rede sobre as entradas e gera a **matriz de confusão** (`plotconfusion`) para avaliar o desempenho da classificação

É um exercício clássico de **reconhecimento de padrões** e introdução a redes neurais.

## 🛠️ Tecnologias

![MATLAB](https://img.shields.io/badge/MATLAB-0076A8?style=flat&logo=mathworks&logoColor=white)

- **MATLAB** + **Neural Network Toolbox** (`newff`, `train`, `sim`, `plotconfusion`)

## 🚀 Como executar

1. Abra o arquivo `Rede Neural.m` no MATLAB
2. Execute o script (F5)
3. Acompanhe o treinamento e veja a matriz de confusão gerada ao final

> Requer o **Neural Network / Deep Learning Toolbox** instalado.
