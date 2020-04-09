# Description
In this home work you are asked to implement the following terms in _Verilog_ :
  - An ALU that is capable of the following functionalities :
    - The ALU has 2x16 bits inputs (*Input_A* and *Input_b* ).
    - one 16-bit *output_O*.
    - a 1-bit *zeroFlag* output.
    - a 3-bit input as *control_bits* .

  ![picture](https://github.com/hosseindehghanipour1998/Architecture-Lab/blob/master/HW%202/ALU%20Schematic.jpg){:height="24px" width="48px"}


# Input bits
The ALU gets two 16-bit inputs - *Input_A* and *Input_B*. It's able to do the following operations based on the _control signals_:
  - ADD : adds *Input_A* & *Input_B* and assigns the result to *output_O*.
    - Example : if *Input_A = 4* & *Input_B = 3* the *output_O = 7*
  - SUB : subtracts *Input_B* from *Input_A* and and assigns the result to *output_O*.
    - __Attention__ : If the result equals to zero ( *output_O = 0* ) then you must set  *zeroFlag = 1* otherwise *zeroFlag* will remain _zero_.
  - AND : [_bitwise AND_](https://en.wikipedia.org/wiki/Bitwise_operation#AND)
  - OR : [_bitwise OR_](https://en.wikipedia.org/wiki/Bitwise_operation#OR)
  - SLT : _Set Less Than_ which return _1_ if *Input_A < Input_B* and _0_ otherwise.

# How set control bits ?
![picture](https://github.com/hosseindehghanipour1998/Architecture-Lab/blob/master/HW%202/ALU%20Operation%20Table.jpg)
# Implementation
You are asked to implement the following terms :
1. an ALU Module that satisfies the functionalities described in [input bits](# Input bits) section.
2. A self-checking test bench that tells us whether an operation _has failed_ to do the task or _has succeeded_.
3. The inner design of the ALU.

### Limitation
  1. You are not allowed to use any ***Always Blocks*** in your code. You must use ***Nested Ternary Operators*** instead.
