function [v] = n_turns(starting_position, P, n)
% Mostra il grafico delle probabilità di trovarsi in una certa casella dopo n
% passi a partire da una data posizione

v0 = zeros(1, size(P, 1));
v0(1, starting_position) = 1;

v = v0 * (P)^n;
l = length(v);

figure
plot(1:l, v, '*')
grid on