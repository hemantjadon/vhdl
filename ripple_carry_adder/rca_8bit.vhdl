library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity rca_8bit is
  port (
    number1 : in bit_vector(7 downto 0);
    number2 : in bit_vector(7 downto 0);
    cin : in bit;
    answer : out bit_vector(7 downto 0);
    cout : out bit
  );
end entity;

architecture rca_8bit_arch of rca_8bit is
  component fa
    port (
      x,y,cin : in bit;
      sum,carry : out bit
    );
  end component;
  signal carries : bit_vector(7 downto 0);
begin

  fa1 : fa port map(number1(0),number2(0),cin,answer(0),carries(0));
  fa2 : fa port map(number1(1),number2(1),carries(0),answer(1),carries(1));
  fa3 : fa port map(number1(2),number2(2),carries(1),answer(2),carries(2));
  fa4 : fa port map(number1(3),number2(3),carries(2),answer(3),carries(3));
  fa5 : fa port map(number1(4),number2(4),carries(3),answer(4),carries(4));
  fa6 : fa port map(number1(5),number2(5),carries(4),answer(5),carries(5));
  fa7 : fa port map(number1(6),number2(6),carries(5),answer(6),carries(6));
  fa8 : fa port map(number1(7),number2(7),carries(6),answer(7),carries(7));

  cout <= carries(7);

end architecture;
