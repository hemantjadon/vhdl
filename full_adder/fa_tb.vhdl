library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity fa_tb is
end entity;

architecture fa_tb_arch of fa_tb is
  component fa
  port( x, y, cin : in bit;
        sum, carry : out bit);
  end component;

  signal x1,y1,cin1,sum1,carry1 : bit;
begin

  full_adder1 : fa port map (x1,y1,cin1,sum1,carry1);

  testbench_process : process begin

    x1 <= '0';
    y1 <= '0';
    cin1 <= '0';
    wait for 1 ns;

    x1 <= '1';
    y1 <= '0';
    cin1 <= '0';
    wait for 1 ns;

    x1 <= '0';
    y1 <= '1';
    cin1 <= '0';
    wait for 1 ns;

    x1 <= '1';
    y1 <= '1';
    cin1 <= '0';
    wait for 1 ns;

    x1 <= '0';
    y1 <= '0';
    cin1 <= '1';
    wait for 1 ns;

    x1 <= '1';
    y1 <= '0';
    cin1 <= '1';
    wait for 1 ns;

    x1 <= '0';
    y1 <= '1';
    cin1 <= '1';
    wait for 1 ns;

    x1 <= '1';
    y1 <= '1';
    cin1 <= '1';
    wait for 1 ns;

    assert false report "Testbench for full adder finished.";
    wait;

  end process;

end architecture;
