<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a simple 8-bit combinational logic design. It takes 8 input signals through the ui_in[7:0] pins and directly forwards them to the 8 output pins uo_out[7:0]. Each output bit always matches its corresponding input bit. No clock, memory, or sequential logic is used.

Example:

Input (ui_in)	Output (uo_out)
00000000	00000000
00000001	00000001
10101010	10101010
11111111	11111111

## How to test

Apply an 8-bit value to the input pins ui_in[7:0].
Observe the output pins uo_out[7:0].
Verify that the output value exactly matches the input value.
Test several patterns such as:
00000000
11111111
10101010
01010101
10000000

Expected result: uo_out = ui_in for all input combinations.

## External hardware

No external hardware is required.

The design uses only the standard Tiny Tapeout input and output pins:

ui_in[7:0] for inputs
uo_out[7:0] for outputs

No PMODs, displays, sensors, memories, or other external components are needed.

