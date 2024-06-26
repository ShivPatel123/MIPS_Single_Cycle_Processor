-------------------------------------------------------------------------
-- Shivansh Patel
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------
-- demux5to32.vhd
-------------------------------------------------------------------------
--File is working correctly and does not need change
-------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY onescomp_N IS
  GENERIC (N : INTEGER := 32); -- Generic of type integer for input/output data width. Default value is 32.
  PORT (
    i_I : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    o_O : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
END onescomp_N;

ARCHITECTURE structural OF onescomp_N IS
BEGIN
  OnesComp : FOR i IN 0 TO N - 1 GENERATE
    o_O(i) <= NOT i_I(i);
  END GENERATE OnesComp;
END structural;