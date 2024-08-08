----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:51 06/14/2020 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           p1 : out  STD_LOGIC_VECTOR (7 downto 0);
           p2 : out  STD_LOGIC_VECTOR (7 downto 0));
end main;

architecture Behavioral of main is
signal m0,m1,m2,m3,m4: std_logic_vector (3 downto 0);
signal n0,n1,n2,n3: std_logic_vector (3 downto 0);
signal s0,s1,s2,s3: std_logic_vector (3 downto 0);
signal c0,c1,c2,c3: std_logic_vector (2 downto 0);
signal sx0,sx1,sx2: std_logic_vector (4 downto 0);
signal cx0,cx1,cx2: std_logic_vector (4 downto 0);

Component full_adder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           cin : in  STD_LOGIC;
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
m3(3)<=a(3) and b(3); s3(3)<=m3(3);

m4(0)<='0';
FA10: full_adder  port map(m4(0),s3(1),c3(0),p1(4),m4(1));
FA11: full_adder  port map(m4(1),s3(2),c3(1),p1(5),m4(2));
FA12: full_adder  port map(m4(2),s3(3),c3(2),p1(6),m4(3));
p1(0)<=s0(0);
p1(1)<=s1(0);
p1(2)<=s2(0);
p1(3)<=s3(0);
p1(7)<=m4(3);


--Wallace Çarpicisi
n0(0)<=a(0) and b(0); n0(1)<=a(0) and b(1);n0(2)<=a(0) and b(2);n0(3)<=a(0) and b(3);
n1(0)<=a(1) and b(0); n1(1)<=a(1) and b(1);n1(2)<=a(1) and b(2);n1(3)<=a(1) and b(3);
n2(0)<=a(2) and b(0); n2(1)<=a(2) and b(1);n2(2)<=a(2) and b(2);n2(3)<=a(2) and b(3);
n3(0)<=a(3) and b(0); n3(1)<=a(3) and b(1);n3(2)<=a(3) and b(2);n3(3)<=a(3) and b(3);
cx0(0)<='0';  cx1(0)<='0';  cx2(0)<='0';
FA13: full_adder  port map(n0(1),n1(0),cx0(0),sx0(0),cx0(1));
FA14: full_adder  port map(n1(1),n2(0),cx0(1),sx0(1),cx0(2));
FA15: full_adder  port map(n2(1),n3(0),cx0(2),sx0(2),cx0(3));
FA16: full_adder  port map(n3(1),'0',cx0(3),sx0(3),cx0(4));
sx0(4)<=cx0(4);

FA17: full_adder  port map(n0(2),sx0(1),cx1(0),sx1(0),cx1(1));
FA18: full_adder  port map(n1(2),sx0(2),cx1(1),sx1(1),cx1(2));
FA19: full_adder  port map(n2(2),sx0(3),cx1(2),sx1(2),cx1(3));
FA20: full_adder  port map(n3(2),sx0(4),cx1(3),sx1(3),cx1(4));
sx1(4)<=cx1(4);
FA21: full_adder  port map(n0(3),sx1(1),cx2(0),sx2(0),cx2(1));
FA22: full_adder  port map(n1(3),sx1(2),cx2(1),sx2(1),cx2(2));
FA23: full_adder  port map(n2(3),sx1(3),cx2(2),sx2(2),cx2(3));
FA24: full_adder  port map(n3(3),sx1(4),cx2(3),sx2(3),cx2(4));
sx2(4)<=cx2(4);
p2(0)<=n0(0); p2(1)<=sx0(0); p2(2)<=sx1(0);  p2(3)<=sx2(0);
p2(4)<=sx2(1); p2(5)<=sx2(2); p2(6)<=sx2(3); p2(7)<=sx2(4);

end Behavioral;

