## Preimage Aware CompressionFunctions
The codes can be run in [Octave](https://octave.org/). These codes are based on the research been done in "Preimage awareness in Linicrypt" to generate preimage aware compression functions in random oracle model.
### PrA2Inputs2Calls.m
This code generates all 76 possible PrA compression functions with 2 inputs and 2 random oracle calls. Each function being presented as a 3 $\times$ 4 matix where the first two rows corrospond to the first and the second oracle calls input and the third row corrospond to the function result. The first and second collumn also are corrospond to the functions input and the third and fourth collumn are oracle calls result.


### PrAConstant2Inputs2calls.m
This code generates all 532 compression functions which utilizes a constant $v$ in its construction. The constant corrosponf to the third collumn.
#### Example
This example shows how to write the PrA function given the matrix representation.

$$A=\begin{matrix}
 & \begin{matrix}x&y&v&f_1&f_2\end{matrix} \\\\
\begin{matrix}q_1\\\\q_2\\\\m\end{matrix} & 
 \left\lbrack \matrix{0 & 1 & 1 & 0 & 1\\\\1 & 1 & 1 & 0 & 0\\\\1 & 1 & 1 & 1 & 1} \right\rbrack\\\\
\end{matrix}$$

The equivalent compression function is $f(x,y)=f_1(y\oplus v+f_2(x+y+v))+f_2(x+y+v)+x+y+v$
