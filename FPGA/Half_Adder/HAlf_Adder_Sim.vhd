--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:18 04/13/2020
-- Design Name:   
-- Module Name:   /media/uzeyir/uzeyir_varli/uzeyir/projelerim/FPGA_Lesson_projects/Lab1/Half_Adder/HAlf_Adder_Sim.vhd
-- Project Name:  Half_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder_imp
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
 
ENTITY HAlf_Adder_Sim IS
END HAlf_Adder_Sim;
 
ARCHITECTURE behavior OF HAlf_Adder_Sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder_imp
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder_imp PORT MAP (
          A => A,
          B => B,
          S => S,
          C => C
        );

--   -- Clock process definitions
--stim_proc :process
--wait for 100 ns;
--A<='1';
--B<='0';
--      wait;

A <= '1', '0' after 10 NS, '1' after 15 NS;
B <= '1', '0' after 10 NS, '1' after 20 NS;
  --end process;

END;
