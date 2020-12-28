% project 1 Ahmed Muhammad MATH 4315

% problem 1

n = 10;
L = 1;
dx = L/n;

A = generate_matrix(n, dx);


%% problem 2
%part(i)

n2 = 200;
L = 1;
dx2 = L/n2;
l = linspace(0, 1, n2);
fx = f(l);

b = transpose(fx);

A2 = generate_matrix(n2, dx2);

u = A2\b;

figure(1)
plot(u, b)
title('Au = b')
xlabel('u')
ylabel('b')

%% part(ii)

w0 = zeros(200,1);
w = 1;
niterations = 3000;

W = SOR(n2, A2, b, w0, w , niterations);
% 
r = b - A2 * W;

e = (u - W);

figure(2)
plot(e)
title('Error and Residual of W(i)')
xlabel('i')
ylabel('Error / Residual')
hold on
plot(r)
legend('Error','Residual','Location','northwest')
legend('boxoff')
hold off

% when w = 1.25
w2 = 1.25;
W2 = SOR(n2, A2, b, w0, w2 , 1);

r2 = b - A2 * W2;

e2 = u - W2;

figure(3)
plot(e2)
title('Error and Residual of W2(i)')
xlabel('i')
ylabel('Error / Residual')
hold on
plot(r2)
legend('Error','Residual','Location','southeast')
legend('boxoff')
hold off


%% part 3, n = 50
% WITH w = 1
n3 = 50;
L = 1;
dx3 = L/n3;
l2 = linspace(0, 1, n3);
fx = f(l2);

b2 = transpose(fx);

A3 = generate_matrix(n3, dx3);

u2 = A3\b2;

w3 = 1;
w01 = zeros(50,1);
niterations = 3000;
W3 = SOR(n3, A3, b2, w01, w3, niterations);

r3 = b2 - A3 * W3;

e3 = (u2 - W3);

figure(4)
plot(e3)
title('Error and Residual of W3(i)')
xlabel('i')
ylabel('Error / Residual')
hold on
plot(r3)
legend('Error','Residual')
legend('boxoff')
hold off

figure(5)
plot(u2)
title('Comparing Approximation W to U')
xlabel('i')
ylabel('W , u')
hold on
plot(W3)
legend('u','W','Location','northeast')
legend('boxoff')
hold off

% if w = 1.25 was better 

w4 = 1.25;

W4 = SOR(n3, A3, b2, w01, w4, niterations);

r4 = b2 - A3 * W4;

e4 = (u2 - W4);

figure(6)
plot(e4)
title('Error and Residual of W4(i)')
xlabel('i')
ylabel('Error / Residual')
hold on
plot(r4)
legend('Error','Residual')
legend('boxoff')
hold off

figure(7)
plot(u2)
title('Comparing Approximation W to U')
xlabel('i')
ylabel('W , u')
hold on
plot(W4)
legend('u','W','Location','northeast')
legend('boxoff')
hold off