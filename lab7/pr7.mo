model pr7
parameter Real a = 0.88;
parameter Real b = 0.000066;
parameter Real N =1656;
Real n(start=17);
equation
	der(n) = (a+b*n)*(N-n);
end pr7;

model pr7
parameter Real a = 0.000055;
parameter Real b = 0.44;
parameter Real N =1656;
Real n(start=17);
equation
	der(n) = (a+b*n)*(N-n);
end pr7;

model pr7
parameter Real a = 0.52;
parameter Real b = 0.37;
parameter Real N =1656;
Real n(start=17);
equation
	der(n) = (a*cos(time)+b+sin(time)*n)*(N-n);
end pr7;