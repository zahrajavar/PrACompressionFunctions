## Preimage Aware Compression Functions
The scripts in this repository may be run using [Octave](https://octave.org/). The code, which may be used to generate preimage-aware compression functions in the random oracle model, is based on the characterization of preimage awareness presented in the paper "Preimage Awareness in Linicrypt" by Z. Javar and B.M. Kapron.
### PrA2Inputs2Calls.m
This code generates all 76 possible PrA compression functions with 2 inputs and 2 random oracle calls. Each function is presented as a 3 $\times$ 4 matrix where the first two rows correspond to the first and second oracle calls input and the third row correspond to the function result. The first and second columns also correspond to the function's input and the third and fourth columns are oracle calls results.


### PrAConstant2Inputs2calls.m
This code generates all 532 compression functions which utilize a constant $v$ in its construction. The constant corresponds to the third column.
#### Example
This example shows how to write the PrA function given the matrix representation.

$$A=\begin{matrix}
 & \begin{matrix}x&y&v&f_1&f_2\end{matrix} \\\\
\begin{matrix}q_1\\\\q_2\\\\m\end{matrix} & 
 \left\lbrack \matrix{0 & 1 & 1 & 0 & 1\\\\1 & 1 & 1 & 0 & 0\\\\1 & 1 & 1 & 1 & 1} \right\rbrack\\\\
\end{matrix}$$

The equivalent compression function is $f(x,y)=f_1(y \oplus v \oplus f_2(x \oplus y \oplus v)) \oplus f_2(x \oplus y \oplus v)\oplus x \oplus y \oplus v$
