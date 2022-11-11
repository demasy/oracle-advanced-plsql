SET DEFINE OFF;
Prompt drop Type XXDL_FND_USER_TYPE;
DROP TYPE XXDL_FND_USER_TYPE
/

Prompt Type XXDL_FND_USER_TYPE;
--
-- XXDL_FND_USER_TYPE  (Type) 
--
--  Dependencies: 
--   XXDL_FND_USER_OBJ (Type)
--   STANDARD (Package)
--
/* Formatted on 11/11/2022 4:18:07 PM (QP5 v5.287) */
CREATE OR REPLACE TYPE XXDL_FND_USER_TYPE AS TABLE OF XXDL_FND_USER_OBJ;
/
SHOW ERRORS;