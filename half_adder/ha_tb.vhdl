library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity ha_tb is
end entity;

architecture ha_tb_arch of ha_tb is

  component ha
    port (
      a,b : in bit;
      sum,carry : out bit
    );
  end component;

  signal a1,b1,sum1,carry1 : bit;

begin

  half_adder : ha port map(a => a1, b => b1, sum => sum1, carry => carry1);

  process begin

    a1 <= '0';
    b1 <= '0';
    wait for 1 ns;

    a1 <= '1';
    b1 <= '0';
    wait for 1 ns;

    a1 <= '0';
    b1 <= '1';
    wait for 1 ns;

    a1 <= '1';
    b1 <= '1';
    wait for 1 ns;

    assert false report "Testbench for half_adder complete.";
    wait;
  end process;

end architecture;
