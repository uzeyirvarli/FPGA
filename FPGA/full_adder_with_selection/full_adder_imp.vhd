----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:05:03 04/13/2020 
-- Design Name: 
-- Module Name:    full_adder_imp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_imp is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
			  Select1 : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
			  Cikis : out  STD_LOGIC);
end full_adder_imp;

architecture Behavioral of full_adder_imp is
signal x1: std_logic;
signal x2: std_logic;
signal x3: std_logic;

begin
x1<= A xor B;
S<=x1 xor Cin;
x3<=x1 xor Cin;
Cout<=(x1 and Cin)or(A and B);
x2<=(x1 and Cin)or(A and B);
process (Select1)
begin
if Select1<='1' then
Cikis<=x2;
elsif Select1<='0' then
Cikis<=x3;
end if;

end process;
end Behavioral;

