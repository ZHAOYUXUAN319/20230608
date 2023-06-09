000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. LOGIC-EXAMPLE.

000030 DATA DIVISION.
000040 WORKING-STORAGE SECTION.

000050 01 BOOLEAN-1-AND PIC X VALUE 'Y'.
000060 01 BOOLEAN-2-AND PIC X VALUE 'N'.
000070 01 RESULT-AND PIC X.

000080 01 BOOLEAN-1-ANY PIC X VALUE 'Y'.
000090 01 BOOLEAN-2-ANY PIC X VALUE 'N'.
000100 01 RESULT-ANY PIC X.

000110 PROCEDURE DIVISION.
000120 MAIN-LOGIC-AND.
000130     IF BOOLEAN-1-AND = 'Y' AND BOOLEAN-2-AND = 'Y'
000140         MOVE 'Y' TO RESULT-AND
000150     ELSE
000160         MOVE 'N' TO RESULT-AND
000170     END-IF.

000180     DISPLAY "Boolean 1 (AND): " BOOLEAN-1-AND.
000190     DISPLAY "Boolean 2 (AND): " BOOLEAN-2-AND.
000200     DISPLAY "Result (AND): " RESULT-AND.

000210 MAIN-LOGIC-ANY.
000220     IF BOOLEAN-1-ANY = 'Y' OR BOOLEAN-2-ANY = 'Y'
000230         MOVE 'Y' TO RESULT-ANY
000240     ELSE
000250         MOVE 'N' TO RESULT-ANY
000260     END-IF.

000270     DISPLAY "Boolean 1 (ANY): " BOOLEAN-1-ANY.
000280     DISPLAY "Boolean 2 (ANY): " BOOLEAN-2-ANY.
000290     DISPLAY "Result (ANY): " RESULT-ANY.

000300     STOP RUN.
