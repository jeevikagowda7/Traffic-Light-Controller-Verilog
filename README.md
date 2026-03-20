# 🚦 Traffic Light Controller (Verilog FSM)

## 📌 Overview

This project implements a **traffic light controller using a Finite State Machine (FSM)** in Verilog. It simulates a 2-road intersection where traffic signals change based on timed state transitions.

## 🧠 Design Approach

* Moore FSM design

* 4 states:

  * S0: Road A Green, Road B Red
  * S1: Road A Yellow, Road B Red
  * S2: Road A Red, Road B Green
  * S3: Road A Red, Road B Yellow

* Counter used to control timing:

  * Green: 10 cycles
  * Yellow: 3 cycles

## ⚙️ Tools Used

* Xilinx Vivado
* Verilog HDL

## 🧪 Simulation

Behavioral simulation was performed using Vivado. The waveform verifies correct state transitions and light outputs.

## 📂 Project Structure

* `design/` → Verilog module
* `testbench/` → Testbench code
* `simulation/` → Waveform output

## 🚀 How to Run

1. Open Vivado
2. Add design and testbench files
3. Run behavioral simulation
4. Observe waveform

## 🎯 Key Learnings

* FSM design using Verilog
* Testbench creation
* Simulation and debugging

## 📸 Output Waveform

(<img width="1355" height="716" alt="simulation-ss" src="https://github.com/user-attachments/assets/2bc1c3fe-6b06-41dc-aaac-c0da9c7267c8" />
)

## 🔮 Future Improvements
- Add pedestrian crossing signal
- Implement sensor-based adaptive timing
- Deploy on FPGA board
