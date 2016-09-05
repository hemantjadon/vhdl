library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity decoder_2x4 is
  port (
    a,b,enable : in bit;
    outp : out bit_vector(3 downto 0)
  );
end entity;

architecture decoder_2x4_arch of decoder_2x4 is

  signal a_bar,b_bar : bit;

begin

  a_bar <= not(a);
  b_bar <= not(b);

  outp(0) <= enable and a_bar and b_bar;
  outp(1) <= enable and a_bar and b;
  outp(2) <= enable and a and b_bar;
  outp(3) <= enable and a and b;
  
end architecture;
