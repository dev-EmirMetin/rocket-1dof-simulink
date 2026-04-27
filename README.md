# 🚀 1DOF Rocket Flight Simulator (MATLAB/Simulink)

A physics-based 1DOF vertical rocket flight simulator developed in MATLAB/Simulink, including variable mass, thrust curve integration, atmospheric modeling, and Mach-dependent aerodynamics.

---

## Features
- Variable mass model (propellant burn)
- Thrust curve via 1-D lookup table
- Altitude-dependent gravity model
- Atmospheric model (0–11 km, troposphere)
- Mach-dependent drag coefficient (Cd vs Mach)
- Dynamic pressure (q) calculation
- Ground impact detection (simulation stop)

---

## Results (Simulation Output)
- Apogee: 713.24 m  
- Max Velocity: 127.02 m/s  
- Max Mach: 0.375  
- Max Dynamic Pressure (Max-Q): 9.57 kPa  
- Total Flight Time: 27.45 s  

Results were obtained from Simulink time-series outputs.

---

## Physics Models

### Gravity Model
g(h) = g0 * (Re / (Re + h))^2

- g0 = 9.81 m/s²  
- Re = 6,371,000 m  

---

### Atmosphere Model (0–11 km)

T(h) = T0 + L * h

- T0 = 288.15 K  
- L = -6.5e-3 K/m  
- R = 287 J/(kg·K)  
- gamma = 1.4  
- rho0 = 1.225 kg/m³  

> Model validity is limited to tropospheric conditions (0–11 km).

---

## Aerodynamics

### Drag Coefficient (Mach-dependent)

Mach: [0, 0.5, 0.8, 1.0, 1.2, 2.0]  
Cd:   [0.4, 0.4, 0.5, 0.9, 0.7, 0.5]

---

### Drag Force

D = -0.5 * rho * Cd * A * V * |V|

- Reference area: A = 0.2 m²  

---

### Dynamic Pressure

q = 0.5 * rho * V^2

---

## Thrust Model

### Thrust Curve (Lookup Table)

Time [s]:   [0, 0.1, 0.3, 1.0, 3.5, 4.5, 5.0]  
Thrust [N]: [0, 800, 1500, 1500, 1300, 600, 0]

---

## Simulation Parameters

### Mass & Propulsion
- Initial mass: 30 kg  
- Propellant mass: 20 kg  
- Burn time: 5 s  

---

## Notes
- The model is restricted to 1DOF vertical motion.
- No wind, lateral dynamics, or attitude control is included.
- Drag direction is handled using V * |V| formulation to ensure correct force direction.

---

## Future Work
- 2DOF trajectory modeling (pitch + horizontal motion)
- 6DOF rigid-body dynamics
- Parachute / recovery system
- Wind and disturbance modeling

- ## How to Run
1. Open `model/rocket_1dof_vertical_sim.slx` in MATLAB/Simulink
2. Click **Run**
3. Outputs are saved to workspace variables:
   - `h_out`, `v_out`, `mach_out`, `q_out`
4. Use scripts in `scripts/` to generate plots

- Real motor data integration

---

## Author
Emir Metin  
Aerospace Engineering Student
