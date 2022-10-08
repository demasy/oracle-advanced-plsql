/* Formatted on 10/8/2022 4:00:35 PM (QP5 v5.287) */
DECLARE
   TYPE USER_TYPE IS TABLE OF FND_USER%ROWTYPE
      INDEX BY PLS_INTEGER;

   L_USER_LIST   USER_TYPE;
BEGIN
   FOR USER_REC IN (  SELECT *
                        FROM FND_USER FU
                       WHERE 1 = 1 AND ROWNUM < 6 AND USER_ID IS NOT NULL
                    ORDER BY USER_ID)
   LOOP
      L_USER_LIST (USER_REC.USER_ID) := USER_REC;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE (L_USER_LIST (0).USER_NAME);
END;