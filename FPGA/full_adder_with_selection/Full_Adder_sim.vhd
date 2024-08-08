--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:05:25 04/13/2020
-- Design Name:   
-- Module Name:   /media/uzeyir/uzeyir_varli/uzeyir/projelerim/FPGA_Lesson_projects/Lab1/full_adder/Full_Adder_sim.vhd
-- Project Name:  full_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_imp
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
 
ENTITY Full_Adder_sim IS
END Full_Adder_sim;
 
ARCHITECTURE behavior OF Full_Adder_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_imp
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
			Select1 : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic;
			 Cikis : OUT  std_logic
			);
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';
	signal Select1 : std_logic := '0';
	
 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
	signal Cikis : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_imp PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
			 Cikis=> Cikis,
          Cout => Cout,
			  Select1 => Select1
        );

   -- Clock process definitions
   --<clock>_process :process
  
 A <= '1', '0' after 10 NS, '1' after 20 NS;
 B <= '1', '0' after 10 NS, '1' after 20 NS;
Cin <= '1', '0' after 10 NS, '1' after 20 NS;
Select1<= '1', '0' after 10 NS, '1' after 20 NS;
   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
