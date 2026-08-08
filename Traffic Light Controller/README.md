# Traffic Light Controller using Verilog HDL

## Project Description

A Traffic Light Controller is a sequential digital circuit that controls traffic signals at an intersection using a Finite State Machine (FSM). It cycles through three traffic light states:

- 🔴 Red
- 🟢 Green
- 🟡 Yellow

The controller automatically changes the traffic lights in the sequence:

RED → GREEN → YELLOW → RED

This project demonstrates FSM implementation using Verilog HDL and verifies the design through simulation using a testbench.

---

## Features

- Finite State Machine (FSM) Design
- Three Traffic Signal Outputs
- Clock-Driven State Transition
- Active-High Reset
- Easy to Simulate and Synthesize

---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| reset | Active High Reset |

---

## Outputs

| Signal | Description |
|---------|-------------|
| red | Red Light |
| yellow | Yellow Light |
| green | Green Light |

---

## State Diagram

```
        +--------+
        |  RED   |
        +--------+
            |
            V
        +--------+
        | GREEN  |
        +--------+
            |
            V
        +--------+
        | YELLOW |
        +--------+
            |
            +---------
                      |
                      V
                  RED
```

---

## State Table

| State | Red | Yellow | Green |
|-------|-----|--------|-------|
| RED | 1 | 0 | 0 |
| GREEN | 0 | 0 | 1 |
| YELLOW | 0 | 1 | 0 |

---

## Files

- `traffic_light_controller.v` – Verilog HDL design
- `traffic_light_controller_tb.v` – Testbench
- `output.txt` – Expected simulation output
- `README.md` – Documentation

---

## Software Required

- Icarus Verilog
- ModelSim
- Xilinx Vivado
- GTKWave (Optional)

---

## Simulation

Compile

```bash
iverilog traffic_light_controller.v traffic_light_controller_tb.v
```

Run

```bash
vvp a.out
```

---

## Expected Output

```
Time  Red Yellow Green
0      1     0      0
20     0     0      1
40     0     1      0
60     1     0      0
80     0     0      1
100    0     1      0
```

---

## Applications

- Smart Traffic Systems
- Highway Intersections
- Railway Signal Systems
- Smart City Infrastructure
- Embedded and FPGA Projects

---

## Future Improvements

- Four-way Intersection Control
- Pedestrian Crossing Signal
- Vehicle Density Detection
- Emergency Vehicle Priority
- Adjustable Signal Timing

---

## Author

Your Name