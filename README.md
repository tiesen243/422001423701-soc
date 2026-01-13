# 422001423701 SoC Design Practice

Quick guide to build and load the SoC lab exercises on DE2/DE2-115.

## Boards and pins

- Cyclone II: EP2C35F672C6 (pins: [DE2_pin_assignments.csv](DE2_pin_assignments.csv))
- Cyclone IV: EP4CE115F29C7 (pins: [DE2_115_pin_assignments.csv](DE2_115_pin_assignments.csv))

## Requirements

- Quartus II 13.0sp1 (with Qsys)
- Nios II 13.0sp1 Software Build Tools for Eclipse
- USB-Blaster / cable driver installed and board recognized

## Build hardware (Qsys + Quartus)

1. Open the project in Quartus II 13.0sp1.
2. Open Tools -> Qsys and load the appropriate system (e.g., [lab_1/system.qsys](lab_1/system.qsys)).
3. In the Generation tab, click Generate to produce HDL.
4. Processing -> Start Compilation (Ctrl+L) to build the bitstream.

## Build software (Nios II SBT)

1. Open Nios II 13.0sp1 Software Build Tools for Eclipse.
2. File -> Import -> Existing Project into Workspace; select `lab_{n}/software/lab_{n}/` and `lab_{n}/software/lab_{n}_bsp`.
3. Right-click `lab_{n}_bsp` -> Nios II -> Generate BSP.
4. Right-click `lab_{n}` -> Build Project.

**Alternative:** You can also use the provided script in a terminal with the Nios II SBT environment:

```bash
cd lab_{n}/software/lab_{n}_{m}
./create-this-app
```

This script will generate the BSP and build the application.

**Note:** After cloning the repository, run the script once to set up the software projects (generate Makefiles, etc.).

## Program and run

1. Connect the board via USB-Blaster.
2. In Quartus, open Programmer and load the compiled bitstream onto the FPGA.
3. Open Nios II Hardware and select the detected device.
4. In Eclipse, right-click `lab_{n}` -> Run As (or Debug As) to download and execute the software.

## Common issues

- If you see a mismatch system ID or timestamp error: enable Ignore mismatch system ID and Ignore mismatch system timestamp, click Refresh Connections until the device appears, then Apply and Run.
