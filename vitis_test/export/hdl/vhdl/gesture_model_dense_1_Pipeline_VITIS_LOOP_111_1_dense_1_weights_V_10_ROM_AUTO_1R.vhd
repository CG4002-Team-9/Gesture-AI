-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_10_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 9; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 20
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of gesture_model_dense_1_Pipeline_VITIS_LOOP_111_1_dense_1_weights_V_10_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "110001011", 1 => "000001000", 2 => "011000011", 3 => "110101100", 
    4 => "110110000", 5 => "001001100", 6 => "110010101", 7 => "110010011", 
    8 => "010111100", 9 => "000101000", 10 => "110110111", 11 => "110010101", 
    12 => "010011000", 13 => "010010001", 14 => "110111100", 15 => "101101010", 
    16 => "110100100", 17 => "110111101", 18 => "010111001", 19 => "001101000");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

