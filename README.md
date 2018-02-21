# FreeRTOS for dwarfRV32

This is a port of the FreeRTOS operating system to the [dwarfRV32](https://github.com/Cloud-V/dwarfRV32) CPU, based on https://github.com/illustris/FreeRTOS-RISCV with minor fixes and improvements.

# Usage

We added this macro for interrupt handling (defined in port.c):

```c++
freertos_rv32_soft_isr(pointer_to_function, interrupt_number)
```

You can test your final program using the ISS in the dwarfRV32 repository.

# ⚖️ License
As the fork predates the move of FreeRTOS to AWS:

FreeRTOS for dwarfRV32 falls under the proprietary FreeRTOS license, which is the GNU General Public License v2 with a linkage exception and a usage restriction. Check 'License'.

We are going to try our best to move to the MIT license, but this will need permission from @illustris who started this port.
