clc;
clear;

amostras = 191;
% Número de parametros na tabela
nQuedas = 36;
nShorts = 24;
nVariations = 36;
nTransients = 16;
nSourgeOpen = 24;
nSourgeShort = 24;
nDischarge = 24;
nConstante = 30;

voltageDips = cell(1,nQuedas);
voltageDipsRuido = cell(1,nQuedas);
shortInterruption = cell(1,nShorts);
shortInterruptionRuido = cell(1,nShorts);
voltageVariation = cell(1,nVariations);
voltageVariationRuido = cell(1,nVariations);
transientes = cell(1,nTransients);
transientesRuido = cell(1,nTransients);
sourgeOpen = cell(1,nSourgeOpen);
sourgeOpenRuido = cell(1,nSourgeOpen);
sourgeShort = cell(1,nSourgeShort);
sourgeShortRuido = cell(1,nSourgeShort);
discharge = cell(1,nDischarge);
dischargeRuido = cell(1,nDischarge);
constante = cell(1,nConstante);
constanteRuido = cell(1,nConstante);

% IEC 61000-4-29
%% Gerar voltage dips
voltageDips{1} = gerarDips(3.3,40,0.1,2);
voltageDips{2} = gerarDips(3.3,40,0.3,2);
voltageDips{3} = gerarDips(3.3,40,1,2);

voltageDips{4} = gerarDips(3.3,70,0.1,2);
voltageDips{5} = gerarDips(3.3,70,0.3,2);
voltageDips{6} = gerarDips(3.3,70,1,2);

voltageDips{7} = gerarDips(3.3,40,0.1,2);
voltageDips{8} = gerarDips(3.3,40,0.3,2);
voltageDips{9} = gerarDips(3.3,40,1,2);

voltageDips{10} = gerarDips(3.3,70,0.1,2);
voltageDips{11} = gerarDips(3.3,70,0.3,2);
voltageDips{12} = gerarDips(3.3,70,1,2);

voltageDips{13} = gerarDips(3.33,40,0.1,2);
voltageDips{14} = gerarDips(3.33,40,0.3,2);
voltageDips{15} = gerarDips(3.33,40,1,2);

voltageDips{16} = gerarDips(3.33,70,0.1,2);
voltageDips{17} = gerarDips(3.33,70,0.3,2);
voltageDips{18} = gerarDips(3.33,70,1,2);

voltageDips{19} = gerarDips(3.3,40,0.1,2);
voltageDips{20} = gerarDips(3.3,40,0.3,2);
voltageDips{21} = gerarDips(3.3,40,1,2);

voltageDips{22} = gerarDips(3.3,70,0.1,2);
voltageDips{23} = gerarDips(3.3,70,0.3,2);
voltageDips{24} = gerarDips(3.3,70,1,2);

voltageDips{25} = gerarDips(3.3,40,0.1,2);
voltageDips{26} = gerarDips(3.3,40,0.3,2);
voltageDips{27} = gerarDips(3.3,40,1,2);

voltageDips{28} = gerarDips(3.3,70,0.1,2);
voltageDips{29} = gerarDips(3.3,70,0.3,2);
voltageDips{30} = gerarDips(3.3,70,1,2);

voltageDips{31} = gerarDips(3.33,40,0.1,2);
voltageDips{32} = gerarDips(3.33,40,0.3,2);
voltageDips{33} = gerarDips(3.33,40,1,2);

voltageDips{34} = gerarDips(3.33,70,0.1,2);
voltageDips{35} = gerarDips(3.33,70,0.3,2);
voltageDips{36} = gerarDips(3.33,70,1,2);


%% Gerar Short interruption 
shortInterruption{1} = gerarDips(3.3,100,0.1,2);
shortInterruption{2} = gerarDips(3.3,100,0.3,2);
shortInterruption{3} = gerarDips(3.3,100,1,2);

shortInterruption{4} = gerarDips(3.3,100,0.1,2);
shortInterruption{5} = gerarDips(3.3,100,0.3,2);
shortInterruption{6} = gerarDips(3.3,100,1,2);

shortInterruption{7} = gerarDips(3.33,100,0.1,2);
shortInterruption{8} = gerarDips(3.33,100,0.3,2);
shortInterruption{9} = gerarDips(3.33,100,1,2);

shortInterruption{10} = gerarDips(3.33,100,0.1,2);
shortInterruption{11} = gerarDips(3.33,100,0.3,2);
shortInterruption{12} = gerarDips(3.33,100,1,2);

shortInterruption{13} = gerarDips(3.3,100,0.1,2);
shortInterruption{14} = gerarDips(3.3,100,0.3,2);
shortInterruption{15} = gerarDips(3.3,100,1,2);

shortInterruption{16} = gerarDips(3.3,100,0.1,2);
shortInterruption{17} = gerarDips(3.3,100,0.3,2);
shortInterruption{18} = gerarDips(3.3,100,1,2);

shortInterruption{19} = gerarDips(3.33,100,0.1,2);
shortInterruption{20} = gerarDips(3.33,100,0.3,2);
shortInterruption{21} = gerarDips(3.33,100,1,2);

shortInterruption{22} = gerarDips(3.33,100,0.1,2);
shortInterruption{23} = gerarDips(3.33,100,0.3,2);
shortInterruption{24} = gerarDips(3.33,100,1,2);

% %% Gerar Voltage Variation 
voltageVariation{1} = gerarDips(3.3,80,0.1,2);
voltageVariation{2} = gerarDips(3.3,80,0.3,2);
voltageVariation{3} = gerarDips(3.3,80,1,2);

voltageVariation{4} = gerarDips(3.3,120,0.1,2);
voltageVariation{5} = gerarDips(3.3,120,0.3,2);
voltageVariation{6} = gerarDips(3.3,120,1,2);

voltageVariation{7} = gerarDips(3.3,80,0.1,2);
voltageVariation{8} = gerarDips(3.3,80,0.3,2);
voltageVariation{9} = gerarDips(3.3,80,1,2);

voltageVariation{10} = gerarDips(3.3,120,0.1,2);
voltageVariation{11} = gerarDips(3.3,120,0.3,2);
voltageVariation{12} = gerarDips(3.3,120,1,2);

voltageVariation{13} = gerarDips(3.33,80,0.1,2);
voltageVariation{14} = gerarDips(3.33,80,0.3,2);
voltageVariation{15} = gerarDips(3.33,80,1,2);

voltageVariation{16} = gerarDips(3.33,120,0.1,2);
voltageVariation{17} = gerarDips(3.33,120,0.3,2);
voltageVariation{18} = gerarDips(3.33,120,1,2);

voltageVariation{19} = gerarDips(3.3,80,0.1,2);
voltageVariation{20} = gerarDips(3.3,80,0.3,2);
voltageVariation{21} = gerarDips(3.3,80,1,2);

voltageVariation{22} = gerarDips(3.3,120,0.1,2);
voltageVariation{23} = gerarDips(3.3,120,0.3,2);
voltageVariation{24} = gerarDips(3.3,120,1,2);

voltageVariation{25} = gerarDips(3.3,80,0.1,2);
voltageVariation{26} = gerarDips(3.3,80,0.3,2);
voltageVariation{27} = gerarDips(3.3,80,1,2);

voltageVariation{28} = gerarDips(3.3,120,0.1,2);
voltageVariation{29} = gerarDips(3.3,120,0.3,2);
voltageVariation{30} = gerarDips(3.3,120,1,2);

voltageVariation{31} = gerarDips(3.33,80,0.1,2);
voltageVariation{32} = gerarDips(3.33,80,0.3,2);
voltageVariation{33} = gerarDips(3.33,80,1,2);

voltageVariation{34} = gerarDips(3.33,120,0.1,2);
voltageVariation{35} = gerarDips(3.33,120,0.3,2);
voltageVariation{36} = gerarDips(3.33,120,1,2);

%% Gerar Transientes IEC 61000-4-4 fast transients/bursts.

transientes{1} = gerarTransient(250);
transientes{2} = gerarTransient(500);
transientes{3} = gerarTransient(1e3);
transientes{4} = gerarTransient(2e3);

transientes{5} = gerarTransient(250);
transientes{6} = gerarTransient(500);
transientes{7} = gerarTransient(1e3);
transientes{8} = gerarTransient(2e3);

transientes{9} = gerarTransient(250);
transientes{10} = gerarTransient(500);
transientes{11} = gerarTransient(1e3);
transientes{12} = gerarTransient(2e3);

transientes{13} = gerarTransient(250);
transientes{14} = gerarTransient(500);
transientes{15} = gerarTransient(1e3);
transientes{16} = gerarTransient(2e3);

%% Gerar Transientes IEC 61000-4-5 Sourge.

sourgeOpen{1} = gerarSourge(1,500);
sourgeOpen{2} = gerarSourge(1,1000);
sourgeOpen{3} = gerarSourge(1,2000);
sourgeOpen{4} = gerarSourge(1,4000);

sourgeOpen{5} = gerarSourge(1,500);
sourgeOpen{6} = gerarSourge(1,1000);
sourgeOpen{7} = gerarSourge(1,2000);
sourgeOpen{8} = gerarSourge(1,4000);

sourgeOpen{9} = gerarSourge(1,500);
sourgeOpen{10} = gerarSourge(1,1000);
sourgeOpen{11} = gerarSourge(1,2000);
sourgeOpen{12} = gerarSourge(1,4000);

sourgeOpen{13} = gerarSourge(1,500);
sourgeOpen{14} = gerarSourge(1,1000);
sourgeOpen{15} = gerarSourge(1,2000);
sourgeOpen{16} = gerarSourge(1,4000);

sourgeOpen{17} = gerarSourge(1,500);
sourgeOpen{18} = gerarSourge(1,1000);
sourgeOpen{19} = gerarSourge(1,2000);
sourgeOpen{20} = gerarSourge(1,4000);

sourgeOpen{21} = gerarSourge(1,500);
sourgeOpen{22} = gerarSourge(1,1000);
sourgeOpen{23} = gerarSourge(1,2000);
sourgeOpen{24} = gerarSourge(1,4000);

sourgeShort{1} = gerarSourge(2,250);
sourgeShort{2} = gerarSourge(2,500);
sourgeShort{3} = gerarSourge(2,1000);
sourgeShort{4} = gerarSourge(2,2000);

sourgeShort{5} = gerarSourge(2,250);
sourgeShort{6} = gerarSourge(2,500);
sourgeShort{7} = gerarSourge(2,1000);
sourgeShort{8} = gerarSourge(2,2000);

sourgeShort{9} = gerarSourge(2,250);
sourgeShort{10} = gerarSourge(2,500);
sourgeShort{11} = gerarSourge(2,1000);
sourgeShort{12} = gerarSourge(2,2000);

sourgeShort{13} = gerarSourge(2,250);
sourgeShort{14} = gerarSourge(2,500);
sourgeShort{15} = gerarSourge(2,1000);
sourgeShort{16} = gerarSourge(2,2000);

sourgeShort{17} = gerarSourge(2,250);
sourgeShort{18} = gerarSourge(2,500);
sourgeShort{19} = gerarSourge(2,1000);
sourgeShort{20} = gerarSourge(2,2000);

sourgeShort{21} = gerarSourge(2,250);
sourgeShort{22} = gerarSourge(2,500);
sourgeShort{23} = gerarSourge(2,1000);
sourgeShort{24} = gerarSourge(2,2000);

%% Gerar Discharge IEC 61000-4-2.

discharge{1} = gerarDischarge(0.5);
discharge{2} = gerarDischarge(1);
discharge{3} = gerarDischarge(1.5);
discharge{4} = gerarDischarge(2);

discharge{5} = gerarDischarge(0.5);
discharge{6} = gerarDischarge(1);
discharge{7} = gerarDischarge(1.5);
discharge{8} = gerarDischarge(2);

discharge{9} = gerarDischarge(0.5);
discharge{10} = gerarDischarge(1);
discharge{11} = gerarDischarge(1.5);
discharge{12} = gerarDischarge(2);

discharge{13} = gerarDischarge(0.5);
discharge{14} = gerarDischarge(1);
discharge{15} = gerarDischarge(1.5);
discharge{16} = gerarDischarge(2);

discharge{17} = gerarDischarge(0.5);
discharge{18} = gerarDischarge(1);
discharge{19} = gerarDischarge(1.5);
discharge{20} = gerarDischarge(2);

discharge{21} = gerarDischarge(0.5);
discharge{22} = gerarDischarge(1);
discharge{23} = gerarDischarge(1.5);
discharge{24} = gerarDischarge(2);

% % Tensões constantes
constante{1} = gerarConstante(0,0);
constante{2} = gerarConstante(0,0);
constante{3} = gerarConstante(0,0);
constante{4} = gerarConstante(0,1);
constante{5} = gerarConstante(0,1);
constante{6} = gerarConstante(0,1);
constante{7} = gerarConstante(1,2);
constante{8} = gerarConstante(1,2);
constante{9} = gerarConstante(1,2);
constante{10} = gerarConstante(2,3.3);
constante{11} = gerarConstante(2,3.3);
constante{12} = gerarConstante(2,3.3);
constante{13} = gerarConstante(3.3,3.3);
constante{14} = gerarConstante(3.3,3.3);
constante{15} = gerarConstante(3.3,3.3);
constante{16} = gerarConstante(0,0);
constante{17} = gerarConstante(0,0);
constante{18} = gerarConstante(0,0);
constante{19} = gerarConstante(0,1);
constante{20} = gerarConstante(0,1);
constante{21} = gerarConstante(0,1);
constante{22} = gerarConstante(1,2);
constante{23} = gerarConstante(1,2);
constante{24} = gerarConstante(1,2);
constante{25} = gerarConstante(2,3.3);
constante{26} = gerarConstante(2,3.3);
constante{27} = gerarConstante(2,3.3);
constante{28} = gerarConstante(3.3,3.3);
constante{29} = gerarConstante(3.3,3.3);
constante{30} = gerarConstante(3.3,3.3);

%% Gerar o header
for i = 1:amostras
    if i == amostras
        names{i+1} = 'Forma de onda';
    end
    names{i} = ['Amostra ' num2str(i,'%d')];
end

header_string = names{1};
for i = 2:length(names)
    header_string = [header_string,',',names{i}];
end


%
% write the string to a file
fid = fopen('dataset_iec.csv','w');
fprintf(fid,'%s\r\n',header_string);
fclose(fid);

for j = 1:nQuedas
    dlmwrite('dataset_iec.csv', voltageDips{j}, 'precision', '%.3f', '-append')
end

for j = 1:nQuedas
    voltageDipsRuido{j} = awgn(voltageDips{j},30,'measured');
    voltageDipsRuido{j}(length(voltageDipsRuido{j})) = 1;
    dlmwrite('dataset_iec.csv', voltageDipsRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nShorts
    dlmwrite('dataset_iec.csv', shortInterruption{j}, 'precision', '%.3f', '-append')
end

for j = 1:nShorts
    shortInterruptionRuido{j} = awgn(shortInterruption{j},30,'measured');
    shortInterruptionRuido{j}(length(shortInterruptionRuido{j})) = 2;
    dlmwrite('dataset_iec.csv', shortInterruptionRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nVariations
    dlmwrite('dataset_iec.csv', voltageVariation{j}, 'precision', '%.3f', '-append')
end

for j = 1:nVariations
    voltageVariationRuido{j} = awgn(voltageVariation{j},30,'measured');
    voltageVariationRuido{j}(length(voltageVariationRuido{j})) = 3;
    dlmwrite('dataset_iec.csv', voltageVariationRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nTransients
    dlmwrite('dataset_iec.csv', transientes{j}, 'precision', '%.3f', '-append')
end

for j = 1:nTransients
    transientesRuido{j} = awgn(transientes{j},30,'measured');
    transientesRuido{j}(length(transientesRuido{j})) = 4;
    dlmwrite('dataset_iec.csv', transientesRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nSourgeOpen
    dlmwrite('dataset_iec.csv', sourgeOpen{j}, 'precision', '%.3f', '-append')
end

for j = 1:nSourgeOpen
    sourgeOpenRuido{j} = awgn(sourgeOpen{j},30,'measured');
    sourgeOpenRuido{j}(length(sourgeOpenRuido{j})) = 5;
    dlmwrite('dataset_iec.csv', sourgeOpenRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nSourgeShort
    dlmwrite('dataset_iec.csv', sourgeShort{j}, 'precision', '%.3f', '-append')
end

for j = 1:nSourgeShort
    sourgeShortRuido{j} = awgn(sourgeShort{j},30,'measured');
    sourgeShortRuido{j}(length(sourgeShortRuido{j})) = 6;
    dlmwrite('dataset_iec.csv', sourgeShortRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nDischarge
    dlmwrite('dataset_iec.csv', discharge{j}, 'precision', '%.3f', '-append')
end

for j = 1:nDischarge
    dischargeRuido{j} = awgn(discharge{j},30,'measured');
    dischargeRuido{j}(length(dischargeRuido{j})) = 7;
    dlmwrite('dataset_iec.csv', dischargeRuido{j}, 'precision', '%.3f', '-append')
end

for j = 1:nConstante
    dlmwrite('dataset_iec.csv', constante{j}, 'precision', '%.3f', '-append')
end

for j = 1:nConstante
    constanteRuido{j} = awgn(constante{j},30,'measured');
    constanteRuido{j}(length(constanteRuido{j})) = 8;
    dlmwrite('dataset_iec.csv', constanteRuido{j}, 'precision', '%.3f', '-append')
end
