-- -----------------------------------------------------------------------
--
--   Company: INVEA-TECH a.s.
--
--   Project: IPFIX design
--
-- -----------------------------------------------------------------------
--
--   (c) Copyright 2011 INVEA-TECH a.s.
--   All rights reserved.
--
--   Please review the terms of the license agreement before using this
--   file. If you are not an authorized user, please destroy this
--   source code file and notify INVEA-TECH a.s. immediately that you
--   inadvertently received an unauthorized copy.
--
-- -----------------------------------------------------------------------
--

-- ib_bfm_rdy_pkg.vhd: Package for driving rdy signal
-- Copyright (C) 2006 CESNET
-- Author(s): Petr Kobiersky <xkobie00@stud.fit.vutbr.cz>
--
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions
-- are met:
-- 1. Redistributions of source code must retain the above copyright
--    notice, this list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above copyright
--    notice, this list of conditions and the following disclaimer in
--    the documentation and/or other materials provided with the
--    distribution.
-- 3. Neither the name of the Company nor the names of its contributors
--    may be used to endorse or promote products derived from this
--    software without specific prior written permission.
--
-- This software is provided ``as is'', and any express or implied
-- warranties, including, but not limited to, the implied warranties of
-- merchantability and fitness for a particular purpose are disclaimed.
-- In no event shall the company or contributors be liable for any
-- direct, indirect, incidental, special, exemplary, or consequential
-- damages (including, but not limited to, procurement of substitute
-- goods or services; loss of use, data, or profits; or business
-- interruption) however caused and on any theory of liability, whether
-- in contract, strict liability, or tort (including negligence or
-- otherwise) arising in any way out of the use of this software, even
-- if advised of the possibility of such damage.
--
-- $Id: ib_bfm_rdy_pkg.vhd 12021 2011-04-15 08:23:45Z kastovsky $
--
-- TODO:
--
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_textio.all;
use IEEE.numeric_std.all;
use std.textio.all;

-- ----------------------------------------------------------------------------
--                        Internal Bus BFM Package
-- ----------------------------------------------------------------------------
PACKAGE ib_bfm_rdy_pkg IS

  ----------------------------------------------------------------------------
  -- PKG FUNCTIONS
  ----------------------------------------------------------------------------

----------------------------------------------------------------------------
  -- 
  PROCEDURE DriveDstRdyN(signal CLK       : IN    std_logic;
                         signal DST_RDY_N : OUT std_logic);

END ib_bfm_rdy_pkg;



-- ----------------------------------------------------------------------------
--                      Internal Bus BFM Package BODY
-- ----------------------------------------------------------------------------
PACKAGE BODY ib_bfm_rdy_pkg IS
  
  -----------------------------------------------------------------------------
  -- 
  PROCEDURE DriveDstRdyN (signal CLK       : IN  std_logic;
                          signal DST_RDY_N : OUT std_logic) IS
  BEGIN
    DST_RDY_N <= '0';
    wait until (CLK'event and CLK='1');
    --DST_RDY_N <= '1';
    --wait until (CLK'event and CLK='1');
  END;

END ib_bfm_rdy_pkg;

