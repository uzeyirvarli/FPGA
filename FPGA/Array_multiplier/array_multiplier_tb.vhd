--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:10:26 06/14/2020
-- Design Name:   
-- Module Name:   F:/uzeyir/uygulamalar/FPGA_Lesson_projects/Donem_sonu_projesi/Array_multiplier/array_multiplier_tb.vhd
-- Project Name:  Array_multiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Array_Multiplier
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY array_multiplier_tb IS
END array_multiplier_tb;
 
ARCHITECTURE behavior OF array_multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Array_Multiplier
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         P1 : OUT  std_logic_vector(7 downto 0);
         P2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P1 : std_logic_vector(7 downto 0);
   signal P2 : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
--   uut: Array_Multiplier PORT MAP (
--          a => a,
--          b => b,
--          P1 => P1,
--          P2 => P2
--        );

   -- Clock process definitions
   --<clock>_process :process
   a <= "0101" after 10 ns;
b<= "1001" after 10 ns;

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;
a<= "0101" after 10 ns;
b<= "1001" after 10 ns;
END;
