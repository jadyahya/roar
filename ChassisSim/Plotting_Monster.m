%% Use after running interpolate my monster function

%% Damper Plots Vs Distance
figure(1)
subplot (1,2,1)
plot(M(:,1),M(:,5))
hold on
plot(M(:,1),M(:,7), 'k')
legend('FL', 'RL')
xlabel('Distance (m)')
ylabel('Damper Position')

subplot(1,2,2)
plot(M(:,1),M(:,6), 'r')
hold on
plot(M(:,1),M(:,8), 'y')
legend('FR','RR')
xlabel('Distance (m)')
ylabel('Damper Position')

figure(2)
subplot (1,2,1)
plot(M(:,1),M(:,5))
hold on
plot(M(:,1),M(:,6), 'k')
legend('FL', 'FR')
xlabel('Distance (m)')
ylabel('Damper Position')

subplot(1,2,2)
plot(M(:,1),M(:,7), 'r')
hold on
plot(M(:,1),M(:,8), 'y')
legend('RL','RR')
xlabel('Distance (m)')
ylabel('Damper Position')
hold off

%% RPM
figure(3)
plot(M(:,1),M(:,2))
xlabel('Distance (m)')
ylabel('RPM')

%% Lat ACC (g)
figure(4)
plot(M(:,1),M(:,3))
xlabel('Distance (m)')
ylabel('Lat Acc (g)')
%% long ACC (g)
figure(5)
plot(M(:,1),M(:,4))
xlabel('Distance (m)')
ylabel('Long Acc (g)')
%% Steering Angle 
figure(6)
plot(M(:,1),M(:,9))
xlabel('Distance (m)')
ylabel('steer at tires')

