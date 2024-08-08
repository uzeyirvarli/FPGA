----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:20 06/08/2020 
-- Design Name: 
-- Module Name:    Array_Multiplier - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Array_Multiplier is
    Port ( a: in  STD_LOGIC_VECTOR (3 downto 0);
	        b : in  STD_LOGIC_VECTOR (3 downto 0);
			  P1: out STD_LOGIC_VECTOR (7 downto 0);
			  P2: out STD_LOGIC_VECTOR (7 downto 0));
end Array_Multiplier;

architecture Behavioral of Array_Multiplier is
signal x: std_logic_vector (15 downto 0);
signal m0,m1,m2,m3,m4: std_logic_vector (3 downto 0);
signal s0,s1,s2,s3: std_logic_vector (3 downto 0);
signal c0,c1,c2,c3: std_logic_vector (2 downto 0);

--signal S: std_logic_vector (11 downto 0);
--signal ground: std_logic := '0'; 


Component full_adder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

Component half_adder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

begin 
-- ARRAY MULTIPLIER 
m0(0)<=a(0) and b(0); s0(0)<=m0(0); m0(1)<=a(0) and b(1); s0(1)<=m0(1);
m0(2)<=a(0) and b(2); s0(2)<=m0(2); m0(3)<=a(0) and b(3); s0(3)<=m0(3);

m1(0)<=a(1) and b(0); c0(0)<='0';
FA1: full_adder  port map(m1(0),s0(1),c0(0),s1(0),c1(0)); 
m1(1)<=a(1) and b(1); c0(1)<='0';
FA2: full_adder  port map(m1(1),s0(2),c0(1),s1(1),c1(1)); 
m1(2)<=a(1) and b(2); c0(2)<='0';
FA3: full_adder  port map(m1(2),s0(3),c0(2),s1(2),c1(2));
m1(3)<=a(1) and b(3); s1(3)<=m1(3);

m2(0)<=a(2) and b(0);
FA4: full_adder  port map(m2(0),s1(1),c1(0),s2(0),c2(0));
m2(1)<=a(2) and b(1);
FA5: full_adder  port map(m2(1),s1(2),c1(1),s2(1),c2(1));
m2(2)<=a(2) and b(2);
FA6: full_adder  port map(m2(2),s1(3),c1(2),s2(2),c2(2));
m2(3)<=a(2) and b(3); s2(3)<=m2(3);

m3(0)<=a(3) and b(0);
FA7: full_adder  port map(m3(0),s2(1),c2(0),s3(0),c3(0));
m3(1)<=a(3) and b(1);
FA8: full_adder  port map(m3(1),s2(2),c2(1),s3(1),c3(1));
m3(2)<=a(3) and b(2);
FA9: full_adder  port map(m3(2),s2(3),c2(2),s3(2),c3(2));
m3(3)<=a(3) and b(3); s3(3)<=m2(3);

m4(0)<='0';
FA10: full_adder  port map(m4(0),s3(1),c3(0),P1(4),m4(1));
FA11: full_adder  port map(m4(1),s3(2),c3(1),P1(5),m4(2));
FA12: full_adder  port map(m4(2),s3(3),c3(2),P1(6),m4(3));
P1(0)<=s0(0);
P1(1)<=s1(0);
P1(2)<=s2(0);
P1(3)<=s3(0);
P1(7)<=m4(3);
--x(0)<=A(0) and B(0);
--x(1)<=A(1) and B(0);
--x(2)<=A(2) and B(0);S
--x(3)<=A(3) and B(0);
--
--x(4)<=A(0) and B(1);
--x(5)<=A(1) and B(1);
--x(6)<=A(2) and B(1);
--x(7)<=A(3) and B(1); 
--
--x(8)<=A(0) and B(2);
--x(9)<=A(1) and B(2);
--x(10)<=A(2) and B(2);
--x(11)<=A(3) and B(2);
--
--x(12)<=A(0) and B(3);
--x(13)<=A(1) and B(3);
--x(14)<=A(2) and B(3);
--x(15)<=A(3) and B(3);

--U1: for k in 0 to 3 generate
--begin 
--U2:for j in 0 to 3 generate
--begin
--x(count)<=A(k)and B(j);
--count<=count+1;
--end generate;
--end generate;

--HA1: half_adder  port map(x(1),x(4),S(0),C(0));
--FA1: full_adder  port map(x(2),x(5),C(0),S(1),C(1));
--FA2: full_adder  port map(x(3),x(6),C(1),S(2),C(2));
--HA2: half_adder  port map(C(1),x(7),S(3),C(3));
--
--HA3: half_adder  port map(S(1),x(8),S(4),C(4));
--FA3: full_adder  port map(S(2),x(9),C(4),S(5),C(5));
--FA4: full_adder  port map(S(3),x(10),C(5),S(6),C(6));
--FA5: full_adder  port map(C(3),x(11),C(6),S(7),C(7));
--
--HA4: half_adder  port map(S(5),x(12),S(8),C(8));
--FA6: full_adder  port map(S(7),x(13),C(8),S(9),C(9));
--FA7: full_adder  port map(S(3),x(14),C(9),S(10),C(10));
--FA8: full_adder  port map(C(6),x(15),C(10),S(11),C(11));
--P(0)<=x(0);
--P(1)<=S(0);
--P(2)<=S(4);
--P(3)<=S(8);
--P(4)<=S(9);
--P(5)<=S(10);
--P(6)<=S(11);
--P(7)<=S(11);

--Wallace Çarpicisi
--m(0)<=B(0) and A(0);
--m(1)<=B(1) and A(0);
--m(2)<=B(2) and A(0);
--m(3)<=B(3) and A(0);
--
--m(4)<=B(0) and A(1);
--m(5)<=B(1) and A(1);
--m(6)<=B(2) and A(1);
--m(7)<=B(3) and A(1); 
--
--m(8)<=B(0) and A(2);
--m(9)<=B(1) and A(2);
--m(10)<=B(2)and A(2);
--m(11)<=B(3) and A(2);
--
--m(12)<=B(0) and A(3);
--m(13)<=B(1) and A(3);
--m(14)<=B(2) and A(3);
--m(15)<=B(3) and A(3);
--C1(0)<='0';
--C1(5)<='0';
--C1(10)<='0';
--FA00: full_adder  port map(m(4),m(1),C1(0),S1(0),C1(1));
--FA01: full_adder  port map(m(8),m(5),C1(1),S1(1),C1(2));
--FA02: full_adder  port map(m(9),m(12),C1(2),S1(2),C1(3));
--FA03: full_adder  port map(ground,m(13),C1(3),S1(3),C1(4));
--
--FA04: full_adder  port map(S1(1),m(2),ground,S1(5),C1(6));
--FA05: full_adder  port map(S1(2),m(6),C1(6),S1(6),C1(7));
--FA06: full_adder  port map(S1(3),m(10),C1(7),S1(7),C1(8));
--FA07: full_adder  port map(C1(4),m(14),C1(8),S1(8),C1(9));
--
--
--FA08: full_adder  port map(S1(6),m(3),ground,S1(10),C1(11));
--FA09: full_adder  port map(S1(7),m(7),C1(11),S1(11),C1(12));
--FA10: full_adder  port map(S1(8),m(11),C1(12),S1(12),C1(13));
--FA11: full_adder  port map(C1(9),m(15),C1(13),S1(13),C1(14));
--
--P1(0)<=m(0);
--P1(1)<=S1(0);
--P1(2)<=S1(2);
--P1(3)<=S1(10);
--P1(4)<=S1(11);
--P1(5)<=S1(12);
--P1(6)<=S1(13);
--P1(7)<=C1(14);

end Behavioral;

