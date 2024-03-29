using Plots
using DifferentialEquations

p_cr = 40;
N = 45;
q = 1;
taul1 = 20;
taul2 = 25;
p1 =15.5;
p2 = 9;
d = 0.00069;

a1 = p_cr/(tau1*tau1*p1*p1*N*q)
a2 = p_cr/(tau2*tau2*p2*p2*N*q)
b = p_cr/(tau1*tau1*p1*p1*tau2*tau2*p2*p2*N*qN*q)
c1 = (p_cr-p1)/(tau1*p1*N*q)
c2 = (p_cr-p2)/(tau2*p2*N*q)

M1=7.5
M2=6.5

t = collect(LinRange(0, 20, 500))
tspan = (0, 20)

function syst(dy, y, p, t)
dy[1] = y[1] - (b/c1+d)*y[1]*y[2] - (a1/c1)*y[1]*y[1]
dy[2] = (c2/c1) * y[2] - (b/c1)*y[1]*y[2] - (a2/c1) * y[2]*y[2];
end

prob = ODEProblem(syst, [M1, M2], tspan)
sol = solve(prob, saveat = t)
plot(sol)

savefig("01.png")

function syst(dy, y, p, t)
dy[1] = y[1] - (b/c1+d)*y[1]*y[2] - (a1/c1)*y[1]*y[1]
dy[2] = (c2/c1) * y[2] - (b/c1)*y[1]*y[2] - (a2/c1) * y[2]*y[2];
end

prob = ODEProblem(syst, [M1, M2], tspan)
sol = solve(prob, saveat = t)
plot(sol)

savefig("02.png")