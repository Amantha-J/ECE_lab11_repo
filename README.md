# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Team 5: Amanda Migliori, Cynthia Morales

## Summary
We used funny counters, and used full adders and D and T Flip Flops to make them. 
Glory be to counters, they are nice and funky. Modulo and a Ripple counter were made.
We did adjust the Flip Flops to have a reset pin. We are gods. We actually passed all 
of our tests first try. We didn't believe it. We've come so far from putting the array 
indexs out of order. We then proceeded to fully forget to assign three leds so they didn't
light up. But we now live.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The Modulo Counter divides clocks by 2 * Count because it needs to have the 
clock go low and high to actually add the count by one.

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?
The ripple counter goes to all 1's for the first clock cycle because in the initialization
the counter starts at 1 to ensure a consistent start state.

### 3 - What width of ripple counter would you use to get to an output of ~1KHz?
Assuming the input is 100MHz, we would need a width of 17 in order to divide
100MHz by 2^17 to get roughly 1KHz (0.76).

