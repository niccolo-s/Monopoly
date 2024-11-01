function [] = next_n_turns(position, P, n)
% Displays the plot of the probabilities of being on a specific space 
% after 1,...,n steps starting from a given position.

v0 = zeros(1, size(P, 1));
v0(1, position) = 1;
X = zeros(n + 1, size(P, 1));
l = length(v0);

figure

for i=1:n
    X(i, :) = v0 * (P)^i;
    plot(1:l, X(i, :), '-*')
    hold on
end
grid on



