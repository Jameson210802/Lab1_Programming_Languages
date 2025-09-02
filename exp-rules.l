 /*********************************************************************
  Name: Any Student             NetID: as3
  Course: CSE 4714              
  Lab: 01 - Lexical Analyzer 
  Purpose of File: Contains the ....


 This is the file that you should modify for Lab 1.
 **********************************************************************/

 /*=====================================================================
  Lab 1 - exp-rules.l  (Starter Skeleton)

  Edit this file to complete the Lab 1 assignment.
  Only Sections B (Definitions) and C (Rules) need changes.
 =====================================================================*/

 /*------------------------------
  Section A: Options & Includes
  (Leave this alone)
 ------------------------------*/
%option noyywrap      
%option nounput       
%option noinput       

%{
  #include <stdio.h>
  #include "lexer.h"

  int line_number = 1;   /* Driver uses this */
%}

 /*------------------------------
  Section B: Definitions (Macros)
  Add more macros if helpful.
 ------------------------------*/
DIG    [0-9]
YEAR   {DIG}{DIG}{DIG}{DIG}

 /*------------------------------
  Section C: Rules
  Each regex → return TOKEN.
  Examples are given; fill in the rest.
 ------------------------------*/
%%
[ \t\r]+        { /* skip spaces" ", tabs"\t", OR carriage returns "\r"... which appear one or more times "+" */ }

 /* TODO: Increment line_number whenever there is a newline character

 /* Example: punctuation */
","             { return SEPARATOR; }

 /* Example: simple words (case-insensitive first letter) */
[Yy]es          { return YES; }
[Nn]o           { return NO; }

 /* TODO: Add rule for Date
 /* TODO: Add rule for "Unknown" → UNKNOWN_VALUE */
 /* TODO: Add rule for "Missing" → MISSING */
 /* TODO: Add rules for Case Status (Laboratory-confirmed, Probable) */
 /* TODO: Add rules for Gender (Male, Female, Other) */
 /* TODO: Add rules for Age buckets (0-9 Years ... 80+ Years) */
 /* TODO: Add rules for quoted ethnicity/race phrases */

 /* End-of-file */
<<EOF>>         { return EOF_TOKEN; }

 /* Anything else → unknown */
.               { return UNKNOWN_TOKEN; }

%%



