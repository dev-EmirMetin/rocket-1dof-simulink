t = out.h_out.Time;

h = out.h_out.Data;
v = out.v_out.Data;
mach = out.mach_out.Data;
q = out.q_out.Data;

apogee = max(h);
[~, idx_apogee] = max(h);
apogee_time = t(idx_apogee);

max_velocity = max(abs(v));
[~, idx_vmax] = max(abs(v));
max_velocity_time = t(idx_vmax);

max_mach = max(mach);
[~, idx_mach] = max(mach);
max_mach_time = t(idx_mach);

max_q = max(q);
[~, idx_q] = max(q);
max_q_time = t(idx_q);

flight_time = t(end);

fprintf('\n===== 1DOF ROCKET FLIGHT RESULTS =====\n');
fprintf('Apogee:        %.2f m at %.2f s\n', apogee, apogee_time);
fprintf('Max Velocity:  %.2f m/s at %.2f s\n', max_velocity, max_velocity_time);
fprintf('Max Mach:      %.3f at %.2f s\n', max_mach, max_mach_time);
fprintf('Max Q:         %.2f Pa at %.2f s\n', max_q, max_q_time);
fprintf('Flight Time:   %.2f s\n', flight_time);
fprintf('======================================\n');

figure; plot(t,h); grid on; title('Altitude vs Time'); xlabel('Time [s]'); ylabel('Altitude [m]');
figure; plot(t,v); grid on; title('Velocity vs Time'); xlabel('Time [s]'); ylabel('Velocity [m/s]');
figure; plot(t,mach); grid on; title('Mach vs Time'); xlabel('Time [s]'); ylabel('Mach [-]');
figure; plot(t,q); grid on; title('Dynamic Pressure vs Time'); xlabel('Time [s]'); ylabel('q [Pa]');