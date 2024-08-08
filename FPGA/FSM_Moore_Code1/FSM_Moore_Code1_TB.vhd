--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:25:59 04/15/2020
-- Design Name:   
-- Module Name:   F:/uzeyir/projelerim/FPGA_Lesson_projects/FSM_Moore_Code1/FSM_Moore_Code1_TB.vhd
-- Project Name:  FSM_Moore_Code1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM_Moore_Code1_imp
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
 
ENTITY FSM_Moore_Code1_TB IS
END FSM_Moore_Code1_TB;
 
ARCHITECTURE behavior OF FSM_Moore_Code1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM_Moore_Code1_imp
    PORT(
         W : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal W : std_logic := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM_Moore_Code1_imp PORT MAP (
          W => W
        );

   -- Clock process definitions
--   <clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
   end process;

w <= '1' after 152 ns, '0' after 252 ns, '1' after 352 ns, '0' after 552 ns , '1' after 652 ns, '0' after 952 ns, '1' after 1052 ns;

END;
