# Dual-Channel Timer

This repository contains a configurable dual-channel down-counting timer with
capture, compare, and overflow interrupt support.

## Features of the Dual-Channel Timer

- Two independent 32-bit timer channels
- Selectable internal-clock or external-event counting
- Configurable external count, reset, and capture trigger modes
- Automatic reload from the programmed maximum value
- Capture and compare support for timer events
- One capture/compare unit on channel 0 and six on channel 1
- Per-channel overflow interrupt generation and clearing
- AHB-Lite register interface with 20 registers and 33 bitfields

## Directory structure

- [`doc/`](doc/) - Documentation covering the timer architecture, programming
  model, and register map.
- [`fv/`](fv/) - SystemVerilog properties used to formally verify the timer.
- [`src/`](src/) - SystemVerilog RTL source files.
- [`fw/`](fw/) - Firmware-facing C definitions for the timer's configuration,
  status, and capture/compare registers.

The top-level RTL module is [`src/tc_soc_timer.sv`](src/tc_soc_timer.sv).
The timer exposes an AHB-Lite register interface and external count, reset,
capture, compare, and overflow-interrupt signals.

## Timer channels

Channel 0 provides one capture/compare unit. Channel 1 provides six
capture/compare units. Each channel has independent enable, count-mode,
reset-mode, maximum-value, active-value, and overflow-interrupt controls.

## Usage

Refer to the documentation in [`doc/`](doc/) for architecture, programming,
and register-map details. Include the RTL files in [`src/`](src/) in the
hardware design, and use the definitions in [`fw/TimerCSC.h`](fw/TimerCSC.h)
when accessing the timer registers from firmware.

## Verification

The formal properties in [`fv/`](fv/) cover timer functionality, the
configuration and status registers, and the AHB-Lite register-interface
bridge. Integrate these properties with the applicable formal verification
environment.
