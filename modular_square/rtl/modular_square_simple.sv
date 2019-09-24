/*******************************************************************************
  Copyright 2019 Supranational LLC

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*******************************************************************************/

`include "msuconfig.vh"

// Set a default modulus and bitwidth but allow them to be defined 
// externally as well. 
`ifndef MOD_LEN_DEF
`define MOD_LEN_DEF 1024
`endif

module modular_square_simple
   #(
     parameter int MOD_LEN = `MOD_LEN_DEF
    )
   (
    input logic                   clk,
    input logic                   reset,
    input logic                   start,
    input logic [MOD_LEN-1:0]     sq_in,
    output logic [MOD_LEN-1:0]    sq_out,
    output logic                  valid
   );



   modular_square_iterative  u_modular_square_iterative (
       .clk                     ( clk         ),
       .rst                     ( reset         ),
       .a                       ( sq_in           ),
       .start_ms                ( start    ),

       .ms                      ( sq_out          ),
       .finish_ms               ( valid   )
   );

endmodule
