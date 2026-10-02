# Formal Verification

This directory contains SystemVerilog properties used to formally verify the
dual-channel timer.

## Contents

- [`timer_functionality_props.sv`](timer_functionality_props.sv) - Behavioral
  properties for channel counting, reset, reload, capture/compare, and
  overflow-interrupt behavior. These properties are generated automatically
  using the Universal Format Specification (USF) methodology.
- [`timer_csc_props.sv`](timer_csc_props.sv) - Properties for the timer's
  configuration and status registers and their bitfields.
- [`timer_ahb_bridge_props.sv`](timer_ahb_bridge_props.sv) - Properties for the
  AHB-Lite register-interface bridge.
- [`doc/dual_channel_timer_udf.pdf`](doc/dual_channel_timer_udf.pdf) - Documentation of the verification scope and actions that are verified via properties found in [`timer_functionality_props.sv`](timer_functionality_props.sv) used to verify the Timer functionality.

The property modules reference the internal `tc_soc_timer` hierarchy and
signals. Compile them with the RTL in [`../src/`](../src/) in the formal
verification environment used by the project.


This [`doc/dual_channel_timer_udf.pdf`](doc/dual_channel_timer_udf.pdf) is also generated using a novel methodology developed as part of ISOLDE project. It combines USF descriptions together with and Large Language Models to generated detailed documentation of the verification scope. For more please see [Enhancing LLM-Generated Hardware Documentation:
Post-Processing and Prompt Engineering Techniques](https://doi.org/10.5281/zenodo.23045099).
