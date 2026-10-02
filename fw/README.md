# Firmware Register Definitions

This directory contains firmware-facing definitions for accessing the
dual-channel timer's configuration, status, and capture/compare registers.

## Contents

- [`TimerCSC.h`](TimerCSC.h) - C header containing register addresses and
  bit-field positions for the timer's `TimerCSC` register block.

Include this header in firmware that configures or reads the timer through its
memory-mapped AHB-Lite register interface. The header defines register offsets
relative to a base address, which is currently configured as `0`.

**Attention:** Before using this header, update the base address to match the
address range assigned to the timer in your SoC.
