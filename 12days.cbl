      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
              IDENTIFICATION DIVISION.
       PROGRAM-ID. TWELVE-DAYS.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-LYRICS.
          05 WS-DAYS OCCURS 12 TIMES INDEXED BY IDX.
             10 WS-DAY-LYRICS PIC X(80).
       01 WS-DAY-NAMES.
          05 WS-DAY OCCURS 12 TIMES INDEXED BY DAY-INDEX.
             10 WS-DAY-NAME PIC X(40).
       01 WS-USER-INPUT PIC X VALUE SPACE.
       01 WS-INDEX PIC 99 VALUE 1.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           PERFORM INITIALIZE-LYRICS
           PERFORM UNTIL WS-INDEX > 12
               DISPLAY "Press ENTER to see the next part of the song:"
               ACCEPT WS-USER-INPUT
               IF WS-USER-INPUT = SPACE
                  PERFORM DISPLAY-LYRICS
                  ADD 1 TO WS-INDEX
               END-IF
           END-PERFORM
           DISPLAY "Merry Christmas!"
           STOP RUN.

       INITIALIZE-LYRICS.
           MOVE "On the first day of Christmas my true love sent to me"
           TO WS-DAY-NAME(1).
           MOVE "A partridge in a pear tree." TO WS-DAYS(1).

           MOVE "On the second day of Christmas my true love sent to me"
           TO WS-DAY-NAME(2).
           MOVE "Two turtle doves, " TO WS-DAYS(2).
           MOVE "And a partridge in a pear tree." TO WS-DAYS(3).

           MOVE "Three French hens," TO WS-DAYS(4).
           MOVE "Four calling birds," TO WS-DAYS(5).
           MOVE "Five golden rings," TO WS-DAYS(6).
           MOVE "Six geese a-laying," TO WS-DAYS(7).
           MOVE "Seven swans a-swimming," TO WS-DAYS(8).
           MOVE "Eight maids a-milking," TO WS-DAYS(9).
           MOVE "Nine ladies dancing," TO WS-DAYS(10).
           MOVE "Ten lords a-leaping," TO WS-DAYS(11).
           MOVE "Eleven pipers piping," TO WS-DAYS(12).

           EXIT.

       DISPLAY-LYRICS.
           DISPLAY WS-DAY-NAME(WS-INDEX)
           PERFORM VARYING IDX FROM WS-INDEX BY -1 UNTIL IDX < 1
               DISPLAY WS-DAYS(IDX)
           END-PERFORM
           EXIT.
