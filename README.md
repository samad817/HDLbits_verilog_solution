# HDLBits Verilog Solutions

Welcome to my repository for digital hardware design practice! This project contains my solutions to the problem sets on **[HDLBits](https://hdlbits.01xz.net/)**, covering essential concepts in hardware description languages (HDL) and digital logic circuits.

I am using this repository to practice writing clean, readable hardware description code and to get comfortable using structured Git workflows.

---

## 📂 Progress Tracker & Directory Map

## 1. Verilog Language Basics
| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Getting Started | `getting_started_method1.v` <br> `getting_started_method2.v` | Initial repository setup, driving default high signals |
| Output Zero | `output_zero.v` | Driving constant low signals ground (`1'b0`) |
| Simple Wire | `simple_wire.v` | Continuous assignments, dataflow modeling |
| Four Wires | `four_wires_method1.v` <br> `four_wires_method2.v` | Multi-wire routing, bus creation via concatenation (`{...}`) |
| Inverter | `not_gate.v` | Bitwise NOT operations (`~`) |
| AND Gate | `and_gate.v` | 2-input bitwise AND operations (`&`) |
| NOR Gate | `nor_gate.v` | Combinational gate nesting (`~(a \| b)`) |
| Declaring Wires | `declaring_wires.v` | Declaring internal `wire` variables, multi-stage gate tracking |
| 7458 Chip | `7458_chip_method1.v` <br> `7458_chip_method2.v` | Multi-input complex AND-OR groupings, explicit wires vs. inline expression scaling |


## 2.verilog vectors
| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Vector0 | `vector/vector_method1.v` <br> `vector/vector_method2.v` | Bus indexing, bit extraction, unpacking vectors via discrete routing lanes |
| Vector1 | `vector/vectors1.v` | Bus splitting, slicing a 16-bit vector into upper and lower 8-bit bytes |
| Vector2 | `vector/vector2_method1.v` <br> `vector/vector2_method2.v` | Endianness byte swapping, multi-byte part selection vs. unified concatenation |
| Vector3 (Gates) | `vector/vector_gates.v` | Bitwise vs. logical operators, vector-wide boolean reduction, multi-bus inverse concatenation |
| Vector4 (Gates4) | `vector/gates4.v` | Unary reduction operators, collapsing multi-bit buses into single-bit scalar logic outputs |
| Concat (Vector5) | `vector/vector3_method1.v` <br> `vector/vector3_method2.v` | Vector concatenation, explicit segment slicing vs. unified full-bus streaming |
| Vector Reversal | `vector/vector_reversal_method1.v` <br> `vector/vector_reversal_method2.v` | Combinational structural `for` loops vs. explicit direct bit-reversal concatenation |
| Sign Extension | `vector/vector_replication.v` | Replicating the sign bit (MSB) using bit-replication syntax to extend an 8-bit bus to 32-bit |
| Vector Replication 2 | `vector/vector_replication2.v` | Creating a 25-bit comparison grid by XNOR-ing top-down and bottom-up replicated vectors |


## 3.verilog modules

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Module Instantiation (Base) | `modules/module_pos.v` <br> `modules/module_name.v` | Introduction to hierarchical design, instantiating sub-modules, and connecting basic scalar signals |
| Modules by Position (`mod_a`) | `modules/moda_pos.v` | Connecting multiple inputs and outputs to a sub-module based strictly on structural ordering |
| Modules by Name (`mod_a`) | `modules/moda_name.v` | Utilizing explicit named port connections (`.port(wire)`) for robust, order-independent routing |
| Module Shift | `modules/module_shift.v` | Chaining multiple structural sub-modules together using internal wires to create sequential shift registers |
| Module Shift8 | `modules/module_shift8.v` | Connecting multi-bit vector buses across cascaded sub-modules and using combinational `always @(*)` case blocks to build multiplexer logic |
| Module Add | `modules/module_add.v` | Structural 32-bit addition splitting vector slices into dual pre-defined 16-bit blocks |
| Module Fadd | `modules/module_fadd.v` | Implementing a low-level 1-bit full adder sub-module using dataflow assign gate logic |
| Module Cseladd | `modules/module_cseladd.v` | Implementing a Carry-Select Adder architecture to reduce propagation delay by pre-computing upper additions for both possible carry states |
| Module Addsub | `modules/module_addsub.v` | Designing a configurable 32-bit adder-subtractor unit by replicating a 1-bit control signal into a full vector mask for bitwise inversion logic |


## 4.verilog procedures

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Alwaysblock1 | `procedures/always_block1.v` | Comparing continuous wire assignments against procedural combinational always blocks for identical gate synthesis |
| Alwaysblock2 | `procedures/always_block2.v` | Synthesizing and contrasting continuous wire assignments, combinational always blocks, and clocked sequential flip-flops |
| Always If | `procedures/always_if.v` | Implementing 2-to-1 multiplexer routing logic using ternary assignments and procedural if-else constructs |
| Always If2 | `procedures/always_if2.v` | Eliminating unintentional hardware latches in combinational always blocks by assigning default output states |
| Always Case | `procedures/always_case.v` | Designing a multi-channel 4-bit multiplexer using a procedural case statement with a fallback default state |
| Always Case2 | `procedures/always_case2.v` | Building a 4-bit priority encoder using the case-select constant pattern to enforce sequential hardware priority |
| Always Casez | `procedures/always_casez.v` | Utilizing casez statements and wildcard don't-care bitmasks to implement a priority encoder for large vector buses |
| Always Nolatches | `procedures/always_nolatches.v` | Preventing latch synthesis in combinational decoder structures by preemptively assigning default low states to all output buses |


## 5. More Verilog problems

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Conditional | `more_features/conditional.v` | Designing a parallelized min-finder tree architecture using nested dataflow ternary conditional operators |
| Reduction | `more_features/reduction.v` | Utilizing unary reduction XOR operators to efficiently compute vector parity bit generation in hardware |
| Gates100 | `more_features/gates100.v` | Scaling unary reduction operators across wide 100-bit input vectors for ultra-efficient combinational tree synthesis |
| Vector100r | `more_features/vector100r.v` | Reversing a massive 100-bit vector bus using a combinational for-loop to unroll parallel bit-swapping hardware |
| Popcount255 | `more_features/popcount255.v` | Implementing a 255-bit population counter (adder tree) using a combinational for-loop to accumulate high bits |
| Adder100i | `more_features/adder100i.v` | Structural 100-bit Ripple Carry Adder engineered via a loop-unrolled genvar construct starting at stage index 1 |
| Bcdadd100 | `more_features/bcdadd100.v` | Chaining 100 4-bit BCD adder instances using an inline ternary operator for ultra-compact compile-time port routing |


# 6. Combinational Logic

### Basic Gates

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Wire | `basic_gates/wire.v` | Implementing a basic single-bit input-to-output buffer pass-through. |
| GND | `basic_gates/gnd.v` | Implementing a static low assignment to pull down an output bus/wire. |
| Two Gates | `basic_gates/two_gates.v` | A composite design utilizing compound XOR and XNOR logic gates. |
| Two Bit Equality | `basic_gates/two_bit_equality.v` | Vector magnitude comparison checking equality between two 2-bit buses. |
| Simple Circuit A | `basic_gates/simple_circuit_A.v` | Implementing a localized sub-circuit module using simple bitwise AND-gate thresholds. |
| Simple Circuit B | `basic_gates/simple_circuit_B.v` | Implementing a localized sub-circuit module using an XNOR boolean gate structure. |
| Combine Circuits A and B | `basic_gates/combine_circuits_a_and_b.v` | Synthesizing a multi-stage composite circuit via explicit structural instantiation of sub-modules. |
| 7420 Chip | `basic_gates/7420_chip.v` | Replicating a physical IC chip's logic using dual 4-input NAND gate operations. |
| NOR | `basic_gates/nor.v` | Implementing a multi-input inverted OR logical expression. |
| Another Gate | `basic_gates/another_gate.v` | Designing a custom logic element driven by masked AND-gate operations. |
| More Logic Gates | `basic_gates/more_logic_gates.v` | A comprehensive testbench of standard 2-input combinational logic structures. |
| Truth Tables | `basic_gates/truth_tables.v` | Designing a multi-input combinational logic block from raw truth tables using Sum-of-Products (SOP). |
| Ringer | `basic_gates/ringer.v` | Control path routing for a phone ringer and vibration notification system based on mode selection. |
| Thermostat | `basic_gates/thermostat.v` | Designing a smart environmental climate control system with integrated fan overrides. |
| Population Count 3 | `basic_gates/popcount3.v` | A minimalist, blockless 3-bit population counter using continuous bitwise summation. |
| Gates and Vectors | `basic_gates/gates_and_vectors.v` | Performing neighborwise parallel vector operations using array slicing shifts. |
| Even More Gates | `basic_gates/gates_and_vector.v` | Up-scaling neighborwise vector operations to a high-density 100-bit bus using bitwise concatenation. |


### Multiplexers

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| 2-to-1 Multiplexer | `combinational_logic/multiplexers/mux2to1.v` | Implementing basic routing logic using a single-line conditional ternary operator. |
| 2-to-1 Bus Multiplexer | `combinational_logic/multiplexers/bus_mux2to1.v` | Scaling routing logic to a 100-bit wide bus vector using conditional ternary selection. |
| 9-to-1 Multiplexer (16-bit) | `combinational_logic/multiplexers/bus_mux9to1.v` | Implementing a 9-channel 16-bit wide vector multiplexer with clean case-default fallback logic. |
| 256-to-1 Multiplexer | `combinational_logic/multiplexers/mux256to1.v` | Dynamically indexing a 256-bit input vector using a variable selection bus expression. |
| 256-to-1 Vector MUX (4-bit) | `combinational_logic/multiplexers/4bit_mux256to1.v` | Utilizing indexed part-select (`+:`) syntax to dynamically extract multi-bit vector segments. |


### Arithmetic Circuits

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| Half Adder | `combinational_logic/arithmetic_circuits/half_adder.v` | Implementing basic 1-bit binary addition using XOR and AND logic gates. |
| Full Adder | `combinational_logic/arithmetic_circuits/fadd.v` | Implementing a 1-bit full adder with carry-in using parity XOR and majority logic functions. |
| 3-Bit Ripple Carry Adder | `combinational_logic/arithmetic_circuits/adder3.v` | Connecting multiple full-adder submodules structurally to form a multi-bit ripple carry chain. |
| 4-Bit Unsigned Adder | `combinational_logic/arithmetic_circuits/adder4.v` | Utilizing Verilog context-determined expression widths to naturally capture carry-out bits. |
| Signed Overflow Detector | `combinational_logic/arithmetic_circuits/overflow_adder.v` | Implementing 2's complement signed overflow detection using sign-bit anomaly logic. |
| 100-Bit Ripple Carry Adder | `combinational_logic/arithmetic_circuits/adder100.v` | Implementing a large-scale 100-bit adder using behavioral concatenation for carry-out capture. |
| 4-Digit BCD Adder | `combinational_logic/arithmetic_circuits/bcd_adder16.v` | Cascading multiple 4-bit BCD full adder submodules structurally to handle decimal arithmetic. |


### Karnaugh Maps

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| 3-Variable K-Map (kmap1) | `combinational_logic/karnaugh_maps/kmap1.v` | Implementing simplified SOP logic from a 3-input truth table using bitwise OR gates. |
| 4-Variable K-Map (kmap2) | `combinational_logic/karnaugh_maps/kmap2.v` | Implementing minimized Sum-of-Products (SOP) expressions from a 4-variable grid layout. |
| 4-Variable K-Map (kmap3) | `combinational_logic/karnaugh_maps/kmap3.v` | Simplifying a 4-variable truth table with strategic minterm grouping into a minimal two-term expression. |
| 4-Variable K-Map (kmap4) | `combinational_logic/karnaugh_maps/kmap4.v` | Identifying a checkerboard K-map pattern to implement efficient multi-variable XOR parity logic. |
| Minimum SOP and POS (kmap5) | `combinational_logic/karnaugh_maps/kmap5.v` | Implementing and comparing minimized Sum-of-Products (SOP) and Product-of-Sums (POS) logic from a single K-map. |
| Karnaugh Map Circuit (kmap6) | `combinational_logic/karnaugh_maps/kmap6.v` | Implementing minimized logic functions from a 4-variable K-map using vector-indexed inputs. |
| Karnaugh Map Circuit 2 (kmap7) | `combinational_logic/karnaugh_maps/kmap7.v` | Extracting multi-term minimal SOP expressions from a custom 4-variable vector-indexed truth table. |
| K-Map to Multiplexer (kmap8) | `combinational_logic/karnaugh_maps/kmap8.v` | Driving multiplexer data inputs with simplified Boolean functions to implement target logic maps. |


# 7. Sequential Logic

### Latches and Flip-Flops

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| D Flip-Flop | `sequential_logic/latches_and_flip_flops/dff.v` | Implementing basic sequential storage using clocked always blocks and non-blocking assignments. |
| 8-Bit D Flip-Flop | `sequential_logic/latches_and_flip_flops/dff8.v` | Expanding sequential storage to multi-bit wide register vectors synchronized to a clock edge. |
| 8-Bit D Flip-Flop with Synchronous Reset | `sequential_logic/latches_and_flip_flops/dff8r.v` | Managing register clearing using synchronous reset controls evaluated on the active clock edge. |
| 8-Bit D Flip-Flop with Reset Value (Falling Edge) | `sequential_logic/latches_and_flip_flops/dff8p.v` | Initializing registers to a non-zero hex value on a falling clock edge condition. |
| 8-Bit D Flip-Flop with Asynchronous Reset | `sequential_logic/latches_and_flip_flops/dff8a.v` | Utilizing sensitivity lists to enforce immediate asynchronous register resetting independent of the clock. |
| 16-Bit D Flip-Flop with Byte Enable | `sequential_logic/latches_and_flip_flops/dff16e.v` | Implementing active-low synchronous resets alongside selective multi-byte write enables. |
| D-Latch | `sequential_logic/latches_and_flip_flops/latch.v` | Utilizing combinational always blocks with incomplete branch conditions to infer a level-sensitive transparent latch. |
| DFF with Asynchronous Reset | `sequential_logic/latches_and_flip_flops/dff_ar.v` | Implementing a single-bit flip-flop containing immediate asynchronous active-high override capabilities. |
| DFF with Synchronous Reset | `sequential_logic/latches_and_flip_flops/dff_sr.v` | Building edge-aligned reset control logic that evaluates states purely on the clock edge transition. |
| DFF with XOR Gate | `sequential_logic/latches_and_flip_flops/dff_xor.v` | Designing a feedback loop using an XOR gate to implement toggle flag behavior. |
| DFF with MUX Control | `sequential_logic/latches_and_flip_flops/dff_mux.v` | Integrating a 2-to-1 multiplexer style select line ahead of a register to toggle input streams. |
| Clocked Macrocell Circuit (ece241_2014_q4) | `sequential_logic/latches_and_flip_flops/ece241_2014_q4.v` | Implementing complex multi-mux input routing circuits featuring selective load and clock enable priorities. |
| Multi-Feedback Sequential Circuit (ece241_2013_q7) | `sequential_logic/latches_and_flip_flops/ece241_2013_q7.v` | Tracking and aggregating parallel, mixed-gate feedback registers into a final combinational NOR output. |
| JK Flip-Flop | `sequential_logic/latches_and_flip_flops/jk_ff.v` | Designing a standard JK storage block using its foundational boolean characteristic feedback equation. |
| Positive Edge Detector | `sequential_logic/latches_and_flip_flops/edgedetect.v` | Capturing low-to-high signal transitions across an 8-bit vector by comparing synchronous history states. |
| Dual Edge Detector | `sequential_logic/latches_and_flip_flops/edgedetect3.v` | Exploiting XOR gate properties to catch both rising and falling transition phases uniformly. |
| Sticky Edge Capture Register | `sequential_logic/latches_and_flip_flops/edgecapture.v` | Combining falling edge detection with bitwise OR accumulation registers to lock transient state triggers. |
| Dual-Edge Triggered Flip-Flop | `sequential_logic/latches_and_flip_flops/dualedge.v` | Creating dual-edge capture mechanisms through parallel edge-specific registers multiplexed by the clock. |


### Counters

| Problem Statement | Solution Module | Concepts Covered |
| :--- | :--- | :--- |
| 4-Bit Binary Counter | `sequential_logic/counters/count4.v` | Designing basic modulo-16 up-counters utilizing synchronous active-high clear control blocks. |
| Decade Counter | `sequential_logic/counters/count10.v` | Creating a modulo-10 BCD up-counter by truncating natural register overflows at a specified count threshold. |
| 1-to-10 Decade Counter | `sequential_logic/counters/count1to10.v` | Implementing a custom range counter that offsets both the baseline start value and terminal boundary state. |
| Slow Decade Counter | `sequential_logic/counters/slow_decade_counter.v` | Utilizing an execution gate line (Clock Enable) to safely modulate and slow down state machine updates. |
| Counter with Period 12 | `sequential_logic/counters/count_period12.v` | Instantiating 4-bit macro counters and controlling terminal load flags to alter state sequences structurally. |

*More sections will be added as I progress through the problem sets.*
