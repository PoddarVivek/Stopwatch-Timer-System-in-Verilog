# Stopwatch & Timer System in Verilog

This project implements a simple **Stopwatch and Countdown Timer** using Verilog HDL. It is designed to simulate real-time counter behavior with separate modes for counting up (stopwatch) and counting down (timer). The project includes a testbench to verify both functionalities.

## 🚀 Features

- Dual-mode operation:
  - **Stopwatch Mode**: Counts up from 0 to 255
  - **Countdown Timer Mode**: Counts down from a preset value to 0
- Displays 8-bit time output
- Indicates completion of countdown with a `done` signal
- Fully testable via Verilog testbench

## 🛠️ Technologies Used

- Verilog HDL
- RTL Design (Registers, Counters, FSM logic)
- Simulation using ModelSim or any Verilog simulator
- Testbench writing and validation
- Clock-based logic

## 🧪 Files

- `stopwatch_timer.v` - Main module
- `stopwatch_timer_tb.v` - Testbench to simulate both stopwatch and timer modes

## 📷 Waveform Output (Add screenshot if available)

> Add a screenshot of your simulation result here.

## 📂 How to Run

1. Open ModelSim (or your preferred simulator)
2. Compile both `.v` files
3. Run the simulation and observe the waveforms

## 📄 License

MIT License – Feel free to use and modify.

