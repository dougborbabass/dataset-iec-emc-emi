function transient = gerarTransient(pico)

% n = 0:(1/200e3):0.95e-3;
n = 0.1:(1/100e3):0.10191;

transient = pico*heaviside(n);

for x = 1:(length(transient))
    if mod(x,2) ~= 1
       transient(x) = 0;        
    end
    if x > 151
        transient(x) = 0;
    end
end

% adiciona a classe do sinal
transient(length(transient)) = 4;

% figure()
% plot(n,transient)
% grid on
% grid minor
% xlabel('Tempo (s)')
% ylabel('Tensão (kV)')
% 
% ylim([0 0.26])

end