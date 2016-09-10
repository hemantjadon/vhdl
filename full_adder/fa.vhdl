library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity fa is
  port (
    x,y,cin : in bit;
    sum,carry : out bit
  );
end entity;

architecture fa_arch of fa is
  component ha
    port (
      a,b : in bit;
      sum,carry : out bit
    );
  end component;

  signal sumA,sumB,carryA,carryB : bit;

begin
  ha1 : ha port map(x,y,sumA,carryA);
  ha2 : ha port map(sumA,cin,sumB,carryB);

  sum <= sumB;
  carry <= carryA or carryB;
  
end architecture;
