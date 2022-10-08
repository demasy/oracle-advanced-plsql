/* Formatted on 10/8/2022 4:50:40 PM (QP5 v5.287) */
DECLARE
   TYPE USERS IS VARRAY (4) OF VARCHAR2 (50);

   TEAM   USERS
             := USERS ('Ahmed',
                       'Demasy',
                       'Omar',
                       'Lina');


   PROCEDURE PRINT_TEAM (HEADING VARCHAR2)
   IS
   BEGIN
      DBMS_OUTPUT.PUT_LINE (HEADING);

      FOR I IN 1 .. 4
      LOOP
         DBMS_OUTPUT.PUT_LINE (I || '- ' || TEAM (I));
      END LOOP;

      DBMS_OUTPUT.PUT_LINE ('---');
   END;
BEGIN
   PRINT_TEAM ('My Team:');

   team (3) := team (3) || ' (Updated)';

   PRINT_TEAM ('My Team After Update:');

   team :=
      USERS ('Arun',
             'Amitha',
             'Allan',
             'Mae');
   print_team ('New Team');
END;