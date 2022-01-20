function constante = gerarConstante(amplMin, amplMax)

t=0.1:0.01:2;

constante = (amplMin + (amplMax-amplMin).*rand(1,1))*(heaviside(t));

% adiciona a classe do sinal
constante(length(constante)+1) = 8;

end