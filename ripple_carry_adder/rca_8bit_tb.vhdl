library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity rca_8bit_tb is
end entity;

architecture rca_8bit_tb_arch of rca_8bit_tb is
  component rca_8bit
    port (
      number1 : in bit_vector(7 downto 0);
      number2 : in bit_vector(7 downto 0);
      cin : in bit;
      answer : out bit_vector(7 downto 0);
      cout : out bit
    );
  end component;
  signal number1 : bit_vector(7 downto 0);
  signal number2 : bit_vector(7 downto 0);
  signal cin : bit;
  signal answer : bit_vector(7 downto 0);
  signal cout : bit;
begin
  ripple_carry_adder_1 : rca_8bit port map(number1,number2,cin,answer,cout);

  rca_testbench : process begin
    number1 <= "10100101";
    number2 <= "00010001";
    cin <= '0';
    wait for 1 ns;

    number1 <= "10100101";
    number2 <= "00010001";
    cin <= '1';
    wait for 1 ns;

    assert false report "TB finished";
    wait;

  end process;

end architecture;
