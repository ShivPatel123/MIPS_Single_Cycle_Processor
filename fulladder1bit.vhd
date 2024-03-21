-------------------------------------------------------------------------
-- Shivansh Patel
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------
-- fulladder1bit.vhd
-------------------------------------------------------------------------
--File is working correctly and does not need change
-------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY fulladder1bit IS
  PORT (
    i_x1 : IN STD_LOGIC;
    i_x2 : IN STD_LOGIC;
    i_cin : IN STD_LOGIC := '0'; -- Default value is '0'
    o_sum : OUT STD_LOGIC;
    o_cout : OUT STD_LOGIC
  );
END fulladder1bit;

ARCHITECTURE structural OF fulladder1bit IS
  SIGNAL x1 : STD_LOGIC;
  SIGNAL a1 : STD_LOGIC;
  SIGNAL a2 : STD_LOGIC;

  COMPONENT andg2 IS
    PORT (
      i_A : IN STD_LOGIC;
      i_B : IN STD_LOGIC;
      o_F : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT org2 IS
    PORT (
      i_A : IN STD_LOGIC;
      i_B : IN STD_LOGIC;
      o_F : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT xorg2 IS
    PORT (
      i_A : IN STD_LOGIC;
      i_B : IN STD_LOGIC;
      o_F : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN
  x1 <= i_x1 XOR i_x2;
  o_sum <= x1 XOR i_cin;
  a1 <= i_x1 AND i_x2;
  a2 <= x1 AND i_cin;
  o_cout <= a1 OR a2;
END structural;