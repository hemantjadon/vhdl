library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity decoder_2x4_tb is
end entity;

architecture decoder_2x4_tb_arch of decoder_2x4_tb is
  component decoder_2x4

    port (
      a,b,enable : in bit;
      outp : out bit_vector(3 downto 0)
    );

  end component;

  signal a1,b1,enable1 : bit;
  signal outp1 : bit_vector(3 downto 0);

begin

  decoder : decoder_2x4 port map(a => a1, b => b1, enable => enable1, outp => outp1);

  testbench : process begin

    a1 <= '0';
    b1 <= '0';
    enable1 <= '0';
    wait for 1 ns;

    a1 <= '0';
    b1 <= '1';
    enable1 <= '0';
    wait for 1 ns;

    a1 <= '1';
    b1 <= '0';
    enable1 <= '0';
    wait for 1 ns;

    a1 <= '1';
    b1 <= '1';
    enable1 <= '0';
    wait for 1 ns;

    a1 <= '0';
    b1 <= '0';
    enable1 <= '1';
    wait for 1 ns;

    a1 <= '0';
    b1 <= '1';
    enable1 <= '1';
    wait for 1 ns;

    a1 <= '1';
    b1 <= '0';
    enable1 <= '1';
    wait for 1 ns;

    a1 <= '1';
    b1 <= '1';
    enable1 <= '1';
    wait for 1 ns;

    assert false report "Testbench for decoder_2x4 complete.";
    wait;

  end process;

end architecture;
