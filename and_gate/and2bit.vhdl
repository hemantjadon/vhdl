library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity and2bit is
  port (
    a,b : in bit;
    outp : out bit
  );
end entity;

architecture and2bit_arch of and2bit is
begin

  outp <= a and b;
  
end architecture;
