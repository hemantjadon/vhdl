library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity ha is
  port (
    a,b : in bit;
    sum,carry : out bit
  );
end entity;

architecture ha_arch of ha is
begin

  sum <= a xor b;
  carry <= a and b;

end architecture;
