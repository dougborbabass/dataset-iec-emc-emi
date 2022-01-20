function sourge = gerarSourge(type,ampl)


t = 0:0.4:76;
a1 = 0.0145;
b1 = 2.8353;
k1 = 1.0328;

tau = 3.911;
a3 = 0.01243;

if type == 1
    sourge = ampl*k1*(exp(-a1*t)-exp(-b1*t));
    % adiciona a classe do sinal
    sourge(length(sourge)+1) = 5;
else
%     sourge = -1*ampl*k2*(exp(-a2*t)-exp(-b2*t));% adiciona a classe do sinal
    sourge = a3*ampl*(t.^3).*exp(-t/tau);
%     sourgeruido = awgn(sourge,30,'measured');
    sourge(length(sourge)+1) = 6;
end

% figure()
% plot(t,sourgeruido)
% grid on
% grid minor
% xlabel('Tempo (us)')
% ylabel('Tensão (V)')
% ylim([0 550])
end