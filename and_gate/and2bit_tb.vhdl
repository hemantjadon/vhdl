library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity and2bit_tb is
end entity;

architecture and2bit_tb_arch of and2bit_tb is

  component and2bit
    port (
      a,b : in bit;
      outp : out bit
    );
  end component;

  signal a1,b1,outp1 : bit;

begin

  and_gate : and2bit port map(a => a1, b => b1, outp => outp1);

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

    assert false report "Testbench for 2bit and gate successful.";
    wait;

  end process;

end architecture;
