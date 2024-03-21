-------------------------------------------------------------------------
-- Shivansh
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------
-- mux2t1.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains an implementation of two input mux. 
-- 1/25/24
-------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux2t1 IS

  PORT (
    i_S : IN STD_LOGIC;
    i_D0 : IN STD_LOGIC;
    i_D1 : IN STD_LOGIC;
    o_O : OUT STD_LOGIC);

END mux2t1;

ARCHITECTURE ckt1 OF mux2t1 IS
BEGIN
  o_O <= (((NOT i_S) AND i_D0) OR (i_S AND i_D1));
END ckt1;