*-------------------------------------------------------------------------*
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 04691
 |               NATIONAL SURVEY OF CHILDREN'S HEALTH, 2003
 |
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata provided
 | below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC COPY to copy the SAS transport
 | file to a SAS data set on their system. This program can then be used in
 | conjunction with the SAS system data file.
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions.  Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in the section.
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables stored in the SAS data set. Users can refer to their
 | SAS manual for information on how to permanently store formats in a
 | SAS catalog.
 |
 | NOTE:  Users should modify these sections to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*'
 | and '*/').  To make this section active in the program, users should
 | remove the SAS comment indicators from this section.
 |
 *------------------------------------------------------------------------;

* SAS PROC FORMAT;

PROC FORMAT;
  VALUE state     1='(1) 1-AK' 2='(2) 2-AL' 3='(3) 3-AR' 4='(4) 4-AZ' 5='(5) 5-CA' 6='(6) 6-CO'
                  7='(7) 7-CT' 8='(8) 8-DC' 9='(9) 9-DE' 10='(10) 10-FL' 11='(11) 11-GA' 12='(12) 12-HI'
                  13='(13) 13-IA' 14='(14) 14-ID' 15='(15) 15-IL' 16='(16) 16-IN' 17='(17) 17-KS'
                  18='(18) 18-KY' 19='(19) 19-LA' 20='(20) 20-MA' 21='(21) 21-MD' 22='(22) 22-ME'
                  23='(23) 23-MI' 24='(24) 24-MN' 25='(25) 25-MO' 26='(26) 26-MS' 27='(27) 27-MT'
                  28='(28) 28-NC' 29='(29) 29-ND' 30='(30) 30-NE' 31='(31) 31-NH' 32='(32) 32-NJ'
                  33='(33) 33-NM' 34='(34) 34-NV' 35='(35) 35-NY' 36='(36) 36-OH' 37='(37) 37-OK'
                  38='(38) 38-OR' 39='(39) 39-PA' 40='(40) 40-RI' 41='(41) 41-SC' 42='(42) 42-SD'
                  43='(43) 43-TN' 44='(44) 44-TX' 45='(45) 45-UT' 46='(46) 46-VA' 47='(47) 47-VT'
                  48='(48) 48-WA' 49='(49) 49-WI' 50='(50) 50-WV' 51='(51) 51-WY' ;
  VALUE msa_stat  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT IN AN MSA' 1='(1) 1 - IN AN MSA' ;
  VALUE totkidsf  1='(1) 1 - 1 CHILD' 2='(2) 2 - 2 CHILDREN' 3='(3) 3 - 3 CHILDREN'
                  4='(4) 4 - 4 OR MORE CHILDREN' ;
  VALUE agepos4f  1='(1) 1 - ONLY CHILD' 2='(2) 2 - OLDEST CHILD'
                  3='(3) 3 - 2ND OLDEST CHILD' 4='(4) 4 - 3RD OLDEST CHILD'
                  5='(5) 5 - 4TH OLDEST CHILD' ;
  VALUE s1q01fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - MALE'
                  2='(2) 2 - FEMALE' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE relation  -2='-2 - MISSING'
                  1='(1) 1 - MOTHER (BIOLOGICAL,STEP,FOSTER,ADOPTIVE)'
                  2='(2) 2 - FATHER (BIOLOGICAL,STEP,FOSTER,ADOPTIVE)'
                  3='(3) 3 - OTHER' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE totadult  -2='-2 - MISSING' 1='(1) 1 - 1 ADULT' 2='(2) 2 - 2 ADULTS'
                  3='(3) 3 - 3 OR MORE ADULTS' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE educatio  -2='-2 - MISSING' 1='(1) 1 - LESS THAN HIGH SCHOOL'
                  2='(2) 2 - 12 YEARS, HIGH SCHOOL GRADUATE'
                  3='(3) 3 - MORE THAN HIGH SCHOOL' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE planguag  -2='-2 - MISSING' 1='(1) 1 - ENGLISH'
                  2='(2) 2 - ANY OTHER LANGUAGE' 6='(6) 3 - DON''T KNOW'
                  7='(7) 4 - REFUSED' ;
  VALUE s2q01fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q02r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s2q03r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  996='(996) 996 - DON''T KNOW' 997='(997) 997 - REFUSED' ;
  VALUE bmiclass  -2='-2 - MISSING' 1='(1) 1-UNDERWEIGHT' 2='(2) 2-NORMAL WEIGHT'
                  3='(3) 3-AT RISK OF OVERWEIGHT' 4='(4) 4-OVERWEIGHT' ;
  VALUE s2q04fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q05fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q06fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q07fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q08fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q11fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q12fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q13fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q14fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q15fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q16fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q17fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q18fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q19fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q20fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q21fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q22fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q23fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q24fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q26fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q35fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q37fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q38fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q39fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q40fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q41fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q42fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q44fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q47fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - MINOR'
                  2='(2) 2 - MODERATE' 3='(3) 3 - SEVERE' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q49fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q50fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - MINOR DIFFICULTIES' 2='(2) 2 - MODERATE DIFFICULTIES'
                  3='(3) 3 - SEVERE DIFFICULTIES' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q51fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - A GREAT DEAL' 2='(2) 2 - A MEDIUM AMOUNT'
                  3='(3) 3 - A LITTLE' 4='(4) 4 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q52fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 01 - LESS THAN ONE DAY AGO' 2='(2) 02 - 1-6 DAYS AGO'
                  3='(3) 03 - 1 WEEK TO LESS THAN 3 MONTHS AGO'
                  4='(4) 04 - 3 MONTHS TO LESS THAN 1 YEAR AGO'
                  5='(5) 05 - 1 YEAR TO LESS THAN 3 YEARS AGO'
                  6='(6) 06 - 3 YEARS TO 5 YEARS AGO'
                  7='(7) 07 - MORE THAN 5 YEARS AGO'
                  8='(8) 08 - HAS NEVER USED MEDICATION' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s2q52a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q53fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q54fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - HAS NO NATURAL TEETH'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s2q55x0f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x1f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x2f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x3f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x4f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x5f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x6f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x7f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x8f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q55x9f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q5510f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q5511f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q56fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - 6 MONTHS OR LESS'
                  3='(3) 3 - MORE THAN 6 MONTHS, BUT NOT MORE THAN 1 YEAR AGO'
                  4='(4) 4 - MORE THAN 1 YEAR, BUT NOT MORE THAN 2 YEARS AGO'
                  5='(5) 5 - MORE THAN 2 YEARS, BUT NOT MORE THAN 5 YEARS AGO'
                  6='(6) 6 - MORE THAN 5 YEARS AGO' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s2q59fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s2q60fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - MINOR'
                  2='(2) 2 - MODERATE' 3='(3) 3 - SEVERE' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q61fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - A GREAT DEAL' 2='(2) 2 - A MEDIUM AMOUNT'
                  3='(3) 3 - A LITTLE' 4='(4) 4 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s2q62fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s3q01fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s3q02fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s3q04fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s3q05fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s3q03fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q01fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q02fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q03r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  20='(20) 20 - 20 OR MORE' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s4q04r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  5='(5) 5 - 5 OR MORE' 96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s4q04a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q05r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  5='(5) 5 - 5 OR MORE' 96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s4q06r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  20='(20) 20 - 20 OR MORE' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s4q07fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q08x0f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x1f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x2f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x3f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x4f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x5f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x6f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x7f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x8f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q08x9f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q0810f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q0811f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q0812f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q0813f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q0814f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q0815f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q13fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q14x0f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x1f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x2f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x3f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x4f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x5f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x6f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x7f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x8f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q14x9f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1410f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1411f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1412f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1413f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1414f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q15fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q16fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q17fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q18x0f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x1f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x2f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x3f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x4f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x5f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x6f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x7f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x8f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q18x9f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1810f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1811f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1812f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1813f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q1814f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q23fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q27fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s4q28fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - ONE'
                  2='(2) 2 - TWO' 3='(3) 3 - THREE OR MORE'
                  4='(4) 4 - ALL THAT ARE RECOMMENDED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s4q29fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - DOCTOR''S OFFICE' 2='(2) 2 - SCHOOL CLINIC'
                  3='(3) 3 - COMMUNITY CLINIC'
                  4='(4) 4 - HEAD START PROGRAM OR DAYCARE'
                  5='(5) 5 - HEALTH DEPARTMENT' 6='(6) 6 - PHARMACY'
                  7='(7) 7 - SOME OTHER PLACE'
                  8='(8) 8 - OTHER HOSPITAL/MEDICAL CENTER'
                  9='(9) 9 - MILITARY HOSPITAL/MILITARY BASE/MILITARY CLINIC'
                  10='(10) 10 - WIC' 96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s4q30fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q01fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q02fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q04fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q06fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q06a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q07fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q07a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q08a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q08b    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q09a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - A BIG PROBLEM' 2='(2) 2 - A MODERATE PROBLEM'
                  3='(3) 3 - A SMALL PROBLEM' 4='(4) 4 - NO PROBLEM AT ALL'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q09b    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q09c    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  5='(5) 5 - NO VISITS TO THE SPECIALIST DOCTOR'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q10a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - A BIG PROBLEM' 2='(2) 2 - A MODERATE PROBLEM'
                  3='(3) 3 - A SMALL PROBLEM' 4='(4) 4 - NO PROBLEM AT ALL'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q10b    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q10c    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  5='(5) 5 - NO SPECIAL CARE OR EQUIPMENT RECEIVED'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q13fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s5q13a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q08fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q11fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q12fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q13fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q14fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q15fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q16fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q17fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q18fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q19fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q20fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q21fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q22fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q23fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q24fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q25fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q26fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q27fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q28fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q29fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q48fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q49fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q50fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q51fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q52fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q53fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  996='(996) 996 - DON''T KNOW' 997='(997) 997 - REFUSED' ;
  VALUE s6q54fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q55fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q56x0f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q56x1f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q56x2f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q57fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q58x0f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q58x1f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q58x2f  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  0='(0) 0 - NOT MARKED' 1='(1) 1 - MARKED' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s6q59fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s6q60r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1095='(1095) 1095 - 1095 DAYS OR MORE'
                  9995='(9995) 9995 - STILL BREASTFEEDING' 9996='(9996) 9996 - DON''T KNOW'
                  9997='(9997) 9997 - REFUSED' ;
  VALUE s6q62fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s7q01fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - PUBLIC'
                  2='(2) 2 - PRIVATE' 3='(3) 3 - HOME-SCHOOLED' 4='(4) S.C.'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q01f    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q02r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NONE'
                  40='(40) 40 - 40 OR MORE DAYS' 240='(240) 240 - ENTIRE SCHOOL YEAR'
                  994='(994) 994 - HOME SCHOOLED' 995='(995) 995 - DID NOT GO TO SCHOOL'
                  996='(996) 996 - DON''T KNOW' 997='(997) 997 - REFUSED' ;
  VALUE s7q04fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NEVER'
                  1='(1) 1 - ONCE' 2='(2) 2 - MORE THAN ONCE' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q11fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q11a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q12fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s7q13fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q14fff  -4='-4 - PARTIAL INTERVIEW AFTER S2Q02'
                  -3='-3 - NOT IN UNIVERSE' -2='-2 - MISSING'
                  -1='-1 - LEGITIMATE SKIP' 1='(1) ALL OF HIS/HER FRIENDS' 
                  2='(2) MOST OF HIS/HER FRIENDS'
                  3='(3) SOME OF HIS/HER FRIENDS' 
                  4='(4) NONE OF HIS/HER FRIENDS' 
                  5='(5) 5 - CHILD HAS NO FRIENDS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q15fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q16fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  995='(995) 995 - MORE THAN ZERO, LESS THAN 1 HOUR'
                  996='(996) 996 - DON''T KNOW' 997='(997) 997 - REFUSED' ;
  VALUE s7q17fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q19fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  995='(995) 995 - MORE THAN ZERO, LESS THAN 1 HOUR'
                  996='(996) 996 - DON''T KNOW' 997='(997) 997 - REFUSED' ;
  VALUE s7q20fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s7q21fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s7q22fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q23fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q26fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  995='(995) 995 - CHILD CAN''T READ' 996='(996) 996 - DON''T KNOW'
                  997='(997) 997 - REFUSED' ;
  VALUE s7q26a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - HOURS'
                  2='(2) 2 - MINUTES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q27fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  25='(25) 25 - MORE THAN 0,LESS THAN 1 HOUR'
                  26='(26) 26 - DON''T OWN COMPUTER' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s7q28fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  25='(25) 25 - MORE THAN 0,LESS THAN 1 HOUR'
                  26='(26) 26 - DON''T OWN TELEVISION' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s7q29fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q30fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q31fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q32fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q33fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q34fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q35fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q36fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q37fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q38fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q39fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q40fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - A LOT'
                  2='(2) 2 - A LITTLE' 3='(3) 3 - NOT AT ALL' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s7q56fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q45fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q53fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q52fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q44fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q41fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q54fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q59fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q48fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q62fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s7q63fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q01r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  20='(20) 20 - 20 OR MORE' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s8q03fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  96='(96) 96 - DON''T KNOW' 97='(97) 97 - REFUSED' ;
  VALUE s8q02r    -4='-4 - PARTIAL INTERVIEW' -2='-2 - MISSING' 0='(0) 0 - NONE'
                  1='(1) 1 - AT LEAST ONCE PER YEAR, BUT LESS THAN ONCE PER MONTH'
                  2='(2) 2 - AT LEAST ONCE PER MONTH, BUT LESS THAN ONCE PER WEEK'
                  3='(3) 3 - AT LEAST ONCE PER WEEK, BUT LESS THAN DAILY'
                  4='(4) 4 - DAILY' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q04fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - VERY CLOSE' 2='(2) 2 - SOMEWHAT CLOSE'
                  3='(3) 3 - NOT VERY CLOSE' 4='(4) 4 - NOT CLOSE AT ALL'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q05fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - VERY WELL' 2='(2) 2 - SOMEWHAT WELL'
                  3='(3) 3 - NOT VERY WELL' 4='(4) 4 - NOT WELL AT ALL'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q06fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - VERY WELL' 2='(2) 2 - SOMEWHAT WELL'
                  3='(3) 3 - NOT VERY WELL' 4='(4) 4 - NOT WELL AT ALL'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q07fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q08fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q11fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q12fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - RARELY' 3='(3) 3 - SOMETIMES' 4='(4) 4 - USUALLY'
                  5='(5) 5 - ALWAYS' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q13fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - RARELY' 3='(3) 3 - SOMETIMES' 4='(4) 4 - USUALLY'
                  5='(5) 5 - ALWAYS' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q14fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - RARELY' 3='(3) 3 - SOMETIMES' 4='(4) 4 - USUALLY'
                  5='(5) 5 - ALWAYS' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s8q15fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - RARELY' 3='(3) 3 - SOMETIMES' 4='(4) 4 - USUALLY'
                  5='(5) 5 - ALWAYS' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE famstruc  -4='-4 - PARTIAL INTERVIEW' -2='-2 - MISSING'
                  1='(1) 1 - TWO PARENT BIOLOGICAL/ADOPTED'
                  2='(2) 2 - TWO PARENT STEPFAMILY'
                  3='(3) 3 - SINGLE MOTHER, NO FATHER PRESENT' 4='(4) 4 - OTHER' ;
  VALUE s9q05r    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - MORE THAN ONCE A WEEK' 2='(2) 2 - ABOUT ONCE A WEEK'
                  3='(3) 3 - 1 TO 3 TIMES A MONTH' 4='(4) 4 - 1 TO 11 TIMES A YEAR'
                  5='(5) 5 - NOT AT ALL' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q08fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s9q09fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s9q10fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s9q18fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s9q19fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s9q20fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - EXCELLENT' 2='(2) 2 - VERY GOOD' 3='(3) 3 - GOOD'
                  4='(4) 4 - FAIR' 5='(5) 5 - POOR' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
  VALUE s9q15fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q15a    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q15b    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q15c    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q15d    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q15e    -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q11b    -5='-5 - INTERVIEW COMPLETED PRIOR TO ADDITION OF QUESTION'
                  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q01ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - DEFINITELY AGREE' 2='(2) 2 - SOMEWHAT AGREE'
                  3='(3) 3 - SOMEWHAT DISAGREE' 4='(4) 4 - DEFINITELY DISAGREE'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q02ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - DEFINITELY AGREE' 2='(2) 2 - SOMEWHAT AGREE'
                  3='(3) 3 - SOMEWHAT DISAGREE' 4='(4) 4 - DEFINITELY DISAGREE'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q03ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - DEFINITELY AGREE' 2='(2) 2 - SOMEWHAT AGREE'
                  3='(3) 3 - SOMEWHAT DISAGREE' 4='(4) 4 - DEFINITELY DISAGREE'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q04ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - DEFINITELY AGREE' 2='(2) 2 - SOMEWHAT AGREE'
                  3='(3) 3 - SOMEWHAT DISAGREE' 4='(4) 4 - DEFINITELY DISAGREE'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q05ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  1='(1) 1 - DEFINITELY AGREE' 2='(2) 2 - SOMEWHAT AGREE'
                  3='(3) 3 - SOMEWHAT DISAGREE' 4='(4) 4 - DEFINITELY DISAGREE'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q06ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q07ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s10q08ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - NEVER'
                  2='(2) 2 - SOMETIMES' 3='(3) 3 - USUALLY' 4='(4) 4 - ALWAYS'
                  6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s11q01ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE racer     -2='-2 - MISSING' 1='(1) 1 - WHITE ONLY' 2='(2) 2 - BLACK ONLY'
                  3='(3) 3 - MULTIPLE RACE' 4='(4) 4 - OTHER' ;
  VALUE raceaian  -2='-2 - MISSING' 1='(1) 1 - WHITE ONLY' 2='(2) 2 - BLACK ONLY'
                  3='(3) 3 - MULTIPLE RACE' 4='(4) 4 - AI/AN ONLY' 5='(5) 5 - OTHER' ;
  VALUE raceasia  -2='-2 - MISSING' 1='(1) 1 - WHITE ONLY' 2='(2) 2 - BLACK ONLY'
                  3='(3) 3 - MULTIPLE RACE' 4='(4) 4 - ASIAN ONLY' 5='(5) 5 - OTHER' ;
  VALUE race_hi   -2='-2 - MISSING' 1='(1) 1 - WHITE ONLY' 2='(2) 2 - BLACK ONLY'
                  3='(3) 3 - MULTIPLE RACE' 4='(4) 4 - ASIAN ONLY' 5='(5) 5 - NH/PI ONLY'
                  6='(6) 6 - OTHER' ;
  VALUE s11q03ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s11q04ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s11q05ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s11q06r   -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP'
                  12='(12) 12 - 12 OR MORE' 96='(96) 96 - DON''T KNOW'
                  97='(97) 97 - REFUSED' ;
  VALUE s11q08ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE poverty   -4='-4 - PARTIAL INTERVIEW' -2='-2 - MISSING'
                  1='(1) 1 - LESS THAN 100% POVERTY LEVEL'
                  2='(2) 2 - 100% TO BELOW 133% POVERTY LEVEL'
                  3='(3) 3 - 133% TO BELOW 150% POVERTY LEVEL'
                  4='(4) 4 - 150% TO BELOW 185% POVERTY LEVEL'
                  5='(5) 5 - 185% TO BELOW 200% POVERTY LEVEL'
                  6='(6) 6 - 200% TO BELOW 300% POVERTY LEVEL'
                  7='(7) 7 - 300% TO BELOW 400% POVERTY LEVEL'
                  8='(8) 8 - AT OR ABOVE 400% POVERTY LEVEL' ;
  VALUE c11q11ff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE c11q11a   -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE c11q11b   -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 0='(0) 0 - NO'
                  1='(1) 1 - YES' 6='(6) 6 - DON''T KNOW' 7='(7) 7 - REFUSED' ;
  VALUE s9q34fff  -4='-4 - PARTIAL INTERVIEW' -3='-3 - NOT IN UNIVERSE'
                  -2='-2 - MISSING' -1='-1 - LEGITIMATE SKIP' 1='(1) 1 - YES'
                  2='(2) 2 - NO' 3='(3) 3 - NEVER HEARD OF WIC' 6='(6) 6 - DON''T KNOW'
                  7='(7) 7 - REFUSED' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (MSA_STAT = -2 OR MSA_STAT = -1) THEN MSA_STAT = .;
   IF (S1Q01 >= -4 AND S1Q01 <= -1) THEN S1Q01 = .;
   IF (RELATION = -2) THEN RELATION = .;
   IF (TOTADULT = -2) THEN TOTADULT = .;
   IF (EDUCATIO = -2) THEN EDUCATIO = .;
   IF (PLANGUAG = -2) THEN PLANGUAG = .;
   IF (S2Q01 >= -4 AND S2Q01 <= -1) THEN S2Q01 = .;
   IF (S2Q02R >= -4 AND S2Q02R <= -1) THEN S2Q02R = .;
   IF (S2Q03R >= -4 AND S2Q03R <= -1) THEN S2Q03R = .;
   IF (BMICLASS = -2) THEN BMICLASS = .;
   IF (S2Q04 >= -4 AND S2Q04 <= -1) THEN S2Q04 = .;
   IF (S2Q05 >= -4 AND S2Q05 <= -1) THEN S2Q05 = .;
   IF (S2Q06 >= -4 AND S2Q06 <= -1) THEN S2Q06 = .;
   IF (S2Q07 >= -4 AND S2Q07 <= -1) THEN S2Q07 = .;
   IF (S2Q08 >= -4 AND S2Q08 <= -1) THEN S2Q08 = .;
   IF (S2Q09 >= -4 AND S2Q09 <= -1) THEN S2Q09 = .;
   IF (S2Q10 >= -4 AND S2Q10 <= -1) THEN S2Q10 = .;
   IF (S2Q11 >= -4 AND S2Q11 <= -1) THEN S2Q11 = .;
   IF (S2Q12 >= -4 AND S2Q12 <= -1) THEN S2Q12 = .;
   IF (S2Q13 >= -4 AND S2Q13 <= -1) THEN S2Q13 = .;
   IF (S2Q14 >= -4 AND S2Q14 <= -1) THEN S2Q14 = .;
   IF (S2Q15 >= -4 AND S2Q15 <= -1) THEN S2Q15 = .;
   IF (S2Q16 >= -4 AND S2Q16 <= -1) THEN S2Q16 = .;
   IF (S2Q17 >= -4 AND S2Q17 <= -1) THEN S2Q17 = .;
   IF (S2Q18 >= -4 AND S2Q18 <= -1) THEN S2Q18 = .;
   IF (S2Q19 >= -4 AND S2Q19 <= -1) THEN S2Q19 = .;
   IF (S2Q20 >= -4 AND S2Q20 <= -1) THEN S2Q20 = .;
   IF (S2Q21 >= -4 AND S2Q21 <= -1) THEN S2Q21 = .;
   IF (S2Q22 >= -4 AND S2Q22 <= -1) THEN S2Q22 = .;
   IF (S2Q23 >= -4 AND S2Q23 <= -1) THEN S2Q23 = .;
   IF (S2Q24 >= -4 AND S2Q24 <= -1) THEN S2Q24 = .;
   IF (S2Q26 >= -4 AND S2Q26 <= -1) THEN S2Q26 = .;
   IF (S2Q35 >= -4 AND S2Q35 <= -1) THEN S2Q35 = .;
   IF (S2Q37 >= -4 AND S2Q37 <= -1) THEN S2Q37 = .;
   IF (S2Q38 >= -4 AND S2Q38 <= -1) THEN S2Q38 = .;
   IF (S2Q39 >= -4 AND S2Q39 <= -1) THEN S2Q39 = .;
   IF (S2Q40 >= -4 AND S2Q40 <= -1) THEN S2Q40 = .;
   IF (S2Q41 >= -4 AND S2Q41 <= -1) THEN S2Q41 = .;
   IF (S2Q42 >= -4 AND S2Q42 <= -1) THEN S2Q42 = .;
   IF (S2Q44 >= -4 AND S2Q44 <= -1) THEN S2Q44 = .;
   IF (S2Q47 >= -4 AND S2Q47 <= -1) THEN S2Q47 = .;
   IF (S2Q49 >= -4 AND S2Q49 <= -1) THEN S2Q49 = .;
   IF (S2Q50 >= -4 AND S2Q50 <= -1) THEN S2Q50 = .;
   IF (S2Q51 >= -4 AND S2Q51 <= -1) THEN S2Q51 = .;
   IF (S2Q52 >= -4 AND S2Q52 <= -1) THEN S2Q52 = .;
   IF (S2Q52A >= -4 AND S2Q52A <= -1) THEN S2Q52A = .;
   IF (S2Q53 >= -4 AND S2Q53 <= -1) THEN S2Q53 = .;
   IF (S2Q54 >= -4 AND S2Q54 <= -1) THEN S2Q54 = .;
   IF (S2Q55X01 >= -4 AND S2Q55X01 <= -1) THEN S2Q55X01 = .;
   IF (S2Q55X02 >= -4 AND S2Q55X02 <= -1) THEN S2Q55X02 = .;
   IF (S2Q55X03 >= -4 AND S2Q55X03 <= -1) THEN S2Q55X03 = .;
   IF (S2Q55X04 >= -4 AND S2Q55X04 <= -1) THEN S2Q55X04 = .;
   IF (S2Q55X05 >= -4 AND S2Q55X05 <= -1) THEN S2Q55X05 = .;
   IF (S2Q55X06 >= -4 AND S2Q55X06 <= -1) THEN S2Q55X06 = .;
   IF (S2Q55X07 >= -4 AND S2Q55X07 <= -1) THEN S2Q55X07 = .;
   IF (S2Q55X08 >= -4 AND S2Q55X08 <= -1) THEN S2Q55X08 = .;
   IF (S2Q55X09 >= -4 AND S2Q55X09 <= -1) THEN S2Q55X09 = .;
   IF (S2Q55X10 >= -4 AND S2Q55X10 <= -1) THEN S2Q55X10 = .;
   IF (S2Q55X11 >= -4 AND S2Q55X11 <= -1) THEN S2Q55X11 = .;
   IF (S2Q55X12 >= -4 AND S2Q55X12 <= -1) THEN S2Q55X12 = .;
   IF (S2Q56 >= -4 AND S2Q56 <= -1) THEN S2Q56 = .;
   IF (S2Q59 >= -4 AND S2Q59 <= -1) THEN S2Q59 = .;
   IF (S2Q60 >= -4 AND S2Q60 <= -1) THEN S2Q60 = .;
   IF (S2Q61 >= -4 AND S2Q61 <= -1) THEN S2Q61 = .;
   IF (S2Q62 >= -4 AND S2Q62 <= -1) THEN S2Q62 = .;
   IF (S3Q01 >= -4 AND S3Q01 <= -1) THEN S3Q01 = .;
   IF (S3Q02 >= -4 AND S3Q02 <= -1) THEN S3Q02 = .;
   IF (S3Q04 >= -4 AND S3Q04 <= -1) THEN S3Q04 = .;
   IF (S3Q05 >= -4 AND S3Q05 <= -1) THEN S3Q05 = .;
   IF (S3Q03 >= -4 AND S3Q03 <= -1) THEN S3Q03 = .;
   IF (S4Q01 >= -4 AND S4Q01 <= -1) THEN S4Q01 = .;
   IF (S4Q02 >= -4 AND S4Q02 <= -1) THEN S4Q02 = .;
   IF (S4Q03R >= -4 AND S4Q03R <= -1) THEN S4Q03R = .;
   IF (S4Q04R >= -4 AND S4Q04R <= -1) THEN S4Q04R = .;
   IF (S4Q04A >= -4 AND S4Q04A <= -1) THEN S4Q04A = .;
   IF (S4Q05R >= -4 AND S4Q05R <= -1) THEN S4Q05R = .;
   IF (S4Q06R >= -4 AND S4Q06R <= -1) THEN S4Q06R = .;
   IF (S4Q07 >= -4 AND S4Q07 <= -1) THEN S4Q07 = .;
   IF (S4Q08X01 >= -4 AND S4Q08X01 <= -1) THEN S4Q08X01 = .;
   IF (S4Q08X02 >= -4 AND S4Q08X02 <= -1) THEN S4Q08X02 = .;
   IF (S4Q08X03 >= -4 AND S4Q08X03 <= -1) THEN S4Q08X03 = .;
   IF (S4Q08X04 >= -4 AND S4Q08X04 <= -1) THEN S4Q08X04 = .;
   IF (S4Q08X05 >= -4 AND S4Q08X05 <= -1) THEN S4Q08X05 = .;
   IF (S4Q08X06 >= -4 AND S4Q08X06 <= -1) THEN S4Q08X06 = .;
   IF (S4Q08X07 >= -4 AND S4Q08X07 <= -1) THEN S4Q08X07 = .;
   IF (S4Q08X08 >= -4 AND S4Q08X08 <= -1) THEN S4Q08X08 = .;
   IF (S4Q08X09 >= -4 AND S4Q08X09 <= -1) THEN S4Q08X09 = .;
   IF (S4Q08X10 >= -4 AND S4Q08X10 <= -1) THEN S4Q08X10 = .;
   IF (S4Q08X11 >= -4 AND S4Q08X11 <= -1) THEN S4Q08X11 = .;
   IF (S4Q08X12 >= -4 AND S4Q08X12 <= -1) THEN S4Q08X12 = .;
   IF (S4Q08X13 >= -4 AND S4Q08X13 <= -1) THEN S4Q08X13 = .;
   IF (S4Q08X14 >= -4 AND S4Q08X14 <= -1) THEN S4Q08X14 = .;
   IF (S4Q08X15 >= -4 AND S4Q08X15 <= -1) THEN S4Q08X15 = .;
   IF (S4Q08X16 >= -4 AND S4Q08X16 <= -1) THEN S4Q08X16 = .;
   IF (S4Q09 >= -4 AND S4Q09 <= -1) THEN S4Q09 = .;
   IF (S4Q10 >= -4 AND S4Q10 <= -1) THEN S4Q10 = .;
   IF (S4Q13 >= -4 AND S4Q13 <= -1) THEN S4Q13 = .;
   IF (S4Q14X01 >= -4 AND S4Q14X01 <= -1) THEN S4Q14X01 = .;
   IF (S4Q14X02 >= -4 AND S4Q14X02 <= -1) THEN S4Q14X02 = .;
   IF (S4Q14X03 >= -4 AND S4Q14X03 <= -1) THEN S4Q14X03 = .;
   IF (S4Q14X04 >= -4 AND S4Q14X04 <= -1) THEN S4Q14X04 = .;
   IF (S4Q14X05 >= -4 AND S4Q14X05 <= -1) THEN S4Q14X05 = .;
   IF (S4Q14X06 >= -4 AND S4Q14X06 <= -1) THEN S4Q14X06 = .;
   IF (S4Q14X07 >= -4 AND S4Q14X07 <= -1) THEN S4Q14X07 = .;
   IF (S4Q14X08 >= -4 AND S4Q14X08 <= -1) THEN S4Q14X08 = .;
   IF (S4Q14X09 >= -4 AND S4Q14X09 <= -1) THEN S4Q14X09 = .;
   IF (S4Q14X10 >= -4 AND S4Q14X10 <= -1) THEN S4Q14X10 = .;
   IF (S4Q14X11 >= -4 AND S4Q14X11 <= -1) THEN S4Q14X11 = .;
   IF (S4Q14X13 >= -4 AND S4Q14X13 <= -1) THEN S4Q14X13 = .;
   IF (S4Q14X14 >= -4 AND S4Q14X14 <= -1) THEN S4Q14X14 = .;
   IF (S4Q14X15 >= -4 AND S4Q14X15 <= -1) THEN S4Q14X15 = .;
   IF (S4Q14X16 >= -4 AND S4Q14X16 <= -1) THEN S4Q14X16 = .;
   IF (S4Q15 >= -4 AND S4Q15 <= -1) THEN S4Q15 = .;
   IF (S4Q16 >= -4 AND S4Q16 <= -1) THEN S4Q16 = .;
   IF (S4Q17 >= -4 AND S4Q17 <= -1) THEN S4Q17 = .;
   IF (S4Q18X01 >= -4 AND S4Q18X01 <= -1) THEN S4Q18X01 = .;
   IF (S4Q18X02 >= -4 AND S4Q18X02 <= -1) THEN S4Q18X02 = .;
   IF (S4Q18X03 >= -4 AND S4Q18X03 <= -1) THEN S4Q18X03 = .;
   IF (S4Q18X04 >= -4 AND S4Q18X04 <= -1) THEN S4Q18X04 = .;
   IF (S4Q18X05 >= -4 AND S4Q18X05 <= -1) THEN S4Q18X05 = .;
   IF (S4Q18X06 >= -4 AND S4Q18X06 <= -1) THEN S4Q18X06 = .;
   IF (S4Q18X07 >= -4 AND S4Q18X07 <= -1) THEN S4Q18X07 = .;
   IF (S4Q18X08 >= -4 AND S4Q18X08 <= -1) THEN S4Q18X08 = .;
   IF (S4Q18X09 >= -4 AND S4Q18X09 <= -1) THEN S4Q18X09 = .;
   IF (S4Q18X10 >= -4 AND S4Q18X10 <= -1) THEN S4Q18X10 = .;
   IF (S4Q18X11 >= -4 AND S4Q18X11 <= -1) THEN S4Q18X11 = .;
   IF (S4Q18X13 >= -4 AND S4Q18X13 <= -1) THEN S4Q18X13 = .;
   IF (S4Q18X14 >= -4 AND S4Q18X14 <= -1) THEN S4Q18X14 = .;
   IF (S4Q18X15 >= -4 AND S4Q18X15 <= -1) THEN S4Q18X15 = .;
   IF (S4Q18X16 >= -4 AND S4Q18X16 <= -1) THEN S4Q18X16 = .;
   IF (S4Q23 >= -4 AND S4Q23 <= -1) THEN S4Q23 = .;
   IF (S4Q27 >= -4 AND S4Q27 <= -1) THEN S4Q27 = .;
   IF (S4Q28 >= -4 AND S4Q28 <= -1) THEN S4Q28 = .;
   IF (S4Q29 >= -4 AND S4Q29 <= -1) THEN S4Q29 = .;
   IF (S4Q30 >= -4 AND S4Q30 <= -1) THEN S4Q30 = .;
   IF (S5Q01 >= -4 AND S5Q01 <= -1) THEN S5Q01 = .;
   IF (S5Q02 >= -4 AND S5Q02 <= -1) THEN S5Q02 = .;
   IF (S5Q04 >= -4 AND S5Q04 <= -1) THEN S5Q04 = .;
   IF (S5Q06 >= -4 AND S5Q06 <= -1) THEN S5Q06 = .;
   IF (S5Q06A >= -4 AND S5Q06A <= -1) THEN S5Q06A = .;
   IF (S5Q07 >= -4 AND S5Q07 <= -1) THEN S5Q07 = .;
   IF (S5Q07A >= -4 AND S5Q07A <= -1) THEN S5Q07A = .;
   IF (S5Q08A >= -4 AND S5Q08A <= -1) THEN S5Q08A = .;
   IF (S5Q08B >= -4 AND S5Q08B <= -1) THEN S5Q08B = .;
   IF (S5Q09 >= -4 AND S5Q09 <= -1) THEN S5Q09 = .;
   IF (S5Q09A >= -4 AND S5Q09A <= -1) THEN S5Q09A = .;
   IF (S5Q09B >= -4 AND S5Q09B <= -1) THEN S5Q09B = .;
   IF (S5Q09C >= -4 AND S5Q09C <= -1) THEN S5Q09C = .;
   IF (S5Q10 >= -4 AND S5Q10 <= -1) THEN S5Q10 = .;
   IF (S5Q10A >= -4 AND S5Q10A <= -1) THEN S5Q10A = .;
   IF (S5Q10B >= -4 AND S5Q10B <= -1) THEN S5Q10B = .;
   IF (S5Q10C >= -4 AND S5Q10C <= -1) THEN S5Q10C = .;
   IF (S5Q13 >= -4 AND S5Q13 <= -1) THEN S5Q13 = .;
   IF (S5Q13A >= -4 AND S5Q13A <= -1) THEN S5Q13A = .;
   IF (S6Q08 >= -4 AND S6Q08 <= -1) THEN S6Q08 = .;
   IF (S6Q09 >= -4 AND S6Q09 <= -1) THEN S6Q09 = .;
   IF (S6Q10 >= -4 AND S6Q10 <= -1) THEN S6Q10 = .;
   IF (S6Q11 >= -4 AND S6Q11 <= -1) THEN S6Q11 = .;
   IF (S6Q12 >= -4 AND S6Q12 <= -1) THEN S6Q12 = .;
   IF (S6Q13 >= -4 AND S6Q13 <= -1) THEN S6Q13 = .;
   IF (S6Q14 >= -4 AND S6Q14 <= -1) THEN S6Q14 = .;
   IF (S6Q15 >= -4 AND S6Q15 <= -1) THEN S6Q15 = .;
   IF (S6Q16 >= -4 AND S6Q16 <= -1) THEN S6Q16 = .;
   IF (S6Q17 >= -4 AND S6Q17 <= -1) THEN S6Q17 = .;
   IF (S6Q18 >= -4 AND S6Q18 <= -1) THEN S6Q18 = .;
   IF (S6Q19 >= -4 AND S6Q19 <= -1) THEN S6Q19 = .;
   IF (S6Q20 >= -4 AND S6Q20 <= -1) THEN S6Q20 = .;
   IF (S6Q21 >= -4 AND S6Q21 <= -1) THEN S6Q21 = .;
   IF (S6Q22 >= -4 AND S6Q22 <= -1) THEN S6Q22 = .;
   IF (S6Q23 >= -4 AND S6Q23 <= -1) THEN S6Q23 = .;
   IF (S6Q24 >= -4 AND S6Q24 <= -1) THEN S6Q24 = .;
   IF (S6Q25 >= -4 AND S6Q25 <= -1) THEN S6Q25 = .;
   IF (S6Q26 >= -4 AND S6Q26 <= -1) THEN S6Q26 = .;
   IF (S6Q27 >= -4 AND S6Q27 <= -1) THEN S6Q27 = .;
   IF (S6Q28 >= -4 AND S6Q28 <= -1) THEN S6Q28 = .;
   IF (S6Q29 >= -4 AND S6Q29 <= -1) THEN S6Q29 = .;
   IF (S6Q48 >= -4 AND S6Q48 <= -1) THEN S6Q48 = .;
   IF (S6Q49 >= -4 AND S6Q49 <= -1) THEN S6Q49 = .;
   IF (S6Q50 >= -4 AND S6Q50 <= -1) THEN S6Q50 = .;
   IF (S6Q51 >= -4 AND S6Q51 <= -1) THEN S6Q51 = .;
   IF (S6Q52 >= -4 AND S6Q52 <= -1) THEN S6Q52 = .;
   IF (S6Q53 >= -4 AND S6Q53 <= -1) THEN S6Q53 = .;
   IF (S6Q54 >= -4 AND S6Q54 <= -1) THEN S6Q54 = .;
   IF (S6Q55 >= -4 AND S6Q55 <= -1) THEN S6Q55 = .;
   IF (S6Q56X01 >= -4 AND S6Q56X01 <= -1) THEN S6Q56X01 = .;
   IF (S6Q56X02 >= -4 AND S6Q56X02 <= -1) THEN S6Q56X02 = .;
   IF (S6Q56X03 >= -4 AND S6Q56X03 <= -1) THEN S6Q56X03 = .;
   IF (S6Q57 >= -4 AND S6Q57 <= -1) THEN S6Q57 = .;
   IF (S6Q58X01 >= -4 AND S6Q58X01 <= -1) THEN S6Q58X01 = .;
   IF (S6Q58X02 >= -4 AND S6Q58X02 <= -1) THEN S6Q58X02 = .;
   IF (S6Q58X03 >= -4 AND S6Q58X03 <= -1) THEN S6Q58X03 = .;
   IF (S6Q59 >= -4 AND S6Q59 <= -1) THEN S6Q59 = .;
   IF (S6Q60R >= -4 AND S6Q60R <= -1) THEN S6Q60R = .;
   IF (S6Q62 >= -4 AND S6Q62 <= -1) THEN S6Q62 = .;
   IF (S7Q01 >= -4 AND S7Q01 <= -1) THEN S7Q01 = .;
   IF (S7Q01F >= -4 AND S7Q01F <= -1) THEN S7Q01F = .;
   IF (S7Q02R >= -4 AND S7Q02R <= -1) THEN S7Q02R = .;
   IF (S7Q04 >= -4 AND S7Q04 <= -1) THEN S7Q04 = .;
   IF (S7Q09 >= -4 AND S7Q09 <= -1) THEN S7Q09 = .;
   IF (S7Q10 >= -4 AND S7Q10 <= -1) THEN S7Q10 = .;
   IF (S7Q11 >= -4 AND S7Q11 <= -1) THEN S7Q11 = .;
   IF (S7Q11A >= -4 AND S7Q11A <= -1) THEN S7Q11A = .;
   IF (S7Q12 >= -4 AND S7Q12 <= -1) THEN S7Q12 = .;
   IF (S7Q13 >= -4 AND S7Q13 <= -1) THEN S7Q13 = .;
   IF (S7Q14 >= -4 AND S7Q14 <= -1) THEN S7Q14 = .;
   IF (S7Q15 >= -4 AND S7Q15 <= -1) THEN S7Q15 = .;
   IF (S7Q16 >= -4 AND S7Q16 <= -1) THEN S7Q16 = .;
   IF (S7Q17 >= -4 AND S7Q17 <= -1) THEN S7Q17 = .;
   IF (S7Q19 >= -4 AND S7Q19 <= -1) THEN S7Q19 = .;
   IF (S7Q20 >= -4 AND S7Q20 <= -1) THEN S7Q20 = .;
   IF (S7Q21 >= -4 AND S7Q21 <= -1) THEN S7Q21 = .;
   IF (S7Q22 >= -4 AND S7Q22 <= -1) THEN S7Q22 = .;
   IF (S7Q23 >= -4 AND S7Q23 <= -1) THEN S7Q23 = .;
   IF (S7Q26 >= -4 AND S7Q26 <= -1) THEN S7Q26 = .;
   IF (S7Q26A >= -4 AND S7Q26A <= -1) THEN S7Q26A = .;
   IF (S7Q27 >= -4 AND S7Q27 <= -1) THEN S7Q27 = .;
   IF (S7Q28 >= -4 AND S7Q28 <= -1) THEN S7Q28 = .;
   IF (S7Q29 >= -4 AND S7Q29 <= -1) THEN S7Q29 = .;
   IF (S7Q30 >= -4 AND S7Q30 <= -1) THEN S7Q30 = .;
   IF (S7Q31 >= -4 AND S7Q31 <= -1) THEN S7Q31 = .;
   IF (S7Q32 >= -4 AND S7Q32 <= -1) THEN S7Q32 = .;
   IF (S7Q33 >= -4 AND S7Q33 <= -1) THEN S7Q33 = .;
   IF (S7Q34 >= -4 AND S7Q34 <= -1) THEN S7Q34 = .;
   IF (S7Q35 >= -4 AND S7Q35 <= -1) THEN S7Q35 = .;
   IF (S7Q36 >= -4 AND S7Q36 <= -1) THEN S7Q36 = .;
   IF (S7Q37 >= -4 AND S7Q37 <= -1) THEN S7Q37 = .;
   IF (S7Q38 >= -4 AND S7Q38 <= -1) THEN S7Q38 = .;
   IF (S7Q39 >= -4 AND S7Q39 <= -1) THEN S7Q39 = .;
   IF (S7Q40 >= -4 AND S7Q40 <= -1) THEN S7Q40 = .;
   IF (S7Q56 >= -4 AND S7Q56 <= -1) THEN S7Q56 = .;
   IF (S7Q45 >= -4 AND S7Q45 <= -1) THEN S7Q45 = .;
   IF (S7Q53 >= -4 AND S7Q53 <= -1) THEN S7Q53 = .;
   IF (S7Q52 >= -4 AND S7Q52 <= -1) THEN S7Q52 = .;
   IF (S7Q44 >= -4 AND S7Q44 <= -1) THEN S7Q44 = .;
   IF (S7Q41 >= -4 AND S7Q41 <= -1) THEN S7Q41 = .;
   IF (S7Q54 >= -4 AND S7Q54 <= -1) THEN S7Q54 = .;
   IF (S7Q59 >= -4 AND S7Q59 <= -1) THEN S7Q59 = .;
   IF (S7Q48 >= -4 AND S7Q48 <= -1) THEN S7Q48 = .;
   IF (S7Q62 >= -4 AND S7Q62 <= -1) THEN S7Q62 = .;
   IF (S7Q63 >= -4 AND S7Q63 <= -1) THEN S7Q63 = .;
   IF (S8Q01R >= -4 AND S8Q01R <= -1) THEN S8Q01R = .;
   IF (S8Q03 >= -4 AND S8Q03 <= -1) THEN S8Q03 = .;
   IF (S8Q02R = -2 OR S8Q02R = -4) THEN S8Q02R = .;
   IF (S8Q04 >= -4 AND S8Q04 <= -1) THEN S8Q04 = .;
   IF (S8Q05 >= -4 AND S8Q05 <= -1) THEN S8Q05 = .;
   IF (S8Q06 >= -4 AND S8Q06 <= -1) THEN S8Q06 = .;
   IF (S8Q07 >= -4 AND S8Q07 <= -1) THEN S8Q07 = .;
   IF (S8Q08 >= -4 AND S8Q08 <= -1) THEN S8Q08 = .;
   IF (S8Q09 >= -4 AND S8Q09 <= -1) THEN S8Q09 = .;
   IF (S8Q10 >= -4 AND S8Q10 <= -1) THEN S8Q10 = .;
   IF (S8Q11 >= -4 AND S8Q11 <= -1) THEN S8Q11 = .;
   IF (S8Q12 >= -4 AND S8Q12 <= -1) THEN S8Q12 = .;
   IF (S8Q13 >= -4 AND S8Q13 <= -1) THEN S8Q13 = .;
   IF (S8Q14 >= -4 AND S8Q14 <= -1) THEN S8Q14 = .;
   IF (S8Q15 >= -4 AND S8Q15 <= -1) THEN S8Q15 = .;
   IF (FAMSTRUC = -2 OR FAMSTRUC = -4) THEN FAMSTRUC = .;
   IF (S9Q05R >= -4 AND S9Q05R <= -1) THEN S9Q05R = .;
   IF (S9Q08 >= -4 AND S9Q08 <= -1) THEN S9Q08 = .;
   IF (S9Q09 >= -4 AND S9Q09 <= -1) THEN S9Q09 = .;
   IF (S9Q10 >= -4 AND S9Q10 <= -1) THEN S9Q10 = .;
   IF (S9Q18 >= -4 AND S9Q18 <= -1) THEN S9Q18 = .;
   IF (S9Q19 >= -4 AND S9Q19 <= -1) THEN S9Q19 = .;
   IF (S9Q20 >= -4 AND S9Q20 <= -1) THEN S9Q20 = .;
   IF (S9Q15 >= -4 AND S9Q15 <= -1) THEN S9Q15 = .;
   IF (S9Q15A >= -4 AND S9Q15A <= -1) THEN S9Q15A = .;
   IF (S9Q15B >= -4 AND S9Q15B <= -1) THEN S9Q15B = .;
   IF (S9Q15C >= -4 AND S9Q15C <= -1) THEN S9Q15C = .;
   IF (S9Q15D >= -4 AND S9Q15D <= -1) THEN S9Q15D = .;
   IF (S9Q15E >= -4 AND S9Q15E <= -1) THEN S9Q15E = .;
   IF (S9Q11B >= -5 AND S9Q11B <= -1) THEN S9Q11B = .;
   IF (S10Q01 >= -4 AND S10Q01 <= -1) THEN S10Q01 = .;
   IF (S10Q02 >= -4 AND S10Q02 <= -1) THEN S10Q02 = .;
   IF (S10Q03 >= -4 AND S10Q03 <= -1) THEN S10Q03 = .;
   IF (S10Q04 >= -4 AND S10Q04 <= -1) THEN S10Q04 = .;
   IF (S10Q05 >= -4 AND S10Q05 <= -1) THEN S10Q05 = .;
   IF (S10Q06 >= -4 AND S10Q06 <= -1) THEN S10Q06 = .;
   IF (S10Q07 >= -4 AND S10Q07 <= -1) THEN S10Q07 = .;
   IF (S10Q08 >= -4 AND S10Q08 <= -1) THEN S10Q08 = .;
   IF (S11Q01 >= -4 AND S11Q01 <= -1) THEN S11Q01 = .;
   IF (RACER = -2) THEN RACER = .;
   IF (RACEAIAN = -2) THEN RACEAIAN = .;
   IF (RACEASIA = -2) THEN RACEASIA = .;
   IF (RACE_HI = -2) THEN RACE_HI = .;
   IF (S11Q03 >= -4 AND S11Q03 <= -1) THEN S11Q03 = .;
   IF (S11Q04 >= -4 AND S11Q04 <= -1) THEN S11Q04 = .;
   IF (S11Q05 >= -4 AND S11Q05 <= -1) THEN S11Q05 = .;
   IF (S11Q06R >= -4 AND S11Q06R <= -1) THEN S11Q06R = .;
   IF (S11Q08 >= -4 AND S11Q08 <= -1) THEN S11Q08 = .;
   IF (POVERTY = -4 OR POVERTY = -2) THEN POVERTY = .;
   IF (C11Q11 >= -4 AND C11Q11 <= -1) THEN C11Q11 = .;
   IF (C11Q11A >= -4 AND C11Q11A <= -1) THEN C11Q11A = .;
   IF (C11Q11B >= -4 AND C11Q11B <= -1) THEN C11Q11B = .;
   IF (S9Q34 >= -4 AND S9Q34 <= -1) THEN S9Q34 = .;
*/

* SAS FORMAT STATEMENT;

  FORMAT STATE state. MSA_STAT msa_stat. TOTKIDS4 totkidsf.
         AGEPOS4 agepos4f. S1Q01 s1q01fff. RELATION relation.
         TOTADULT totadult. EDUCATIO educatio. PLANGUAG planguag.
         S2Q01 s2q01fff. S2Q02R s2q02r. S2Q03R s2q03r.
         BMICLASS bmiclass. S2Q04 s2q04fff. S2Q05 s2q05fff.
         S2Q06 s2q06fff. S2Q07 s2q07fff. S2Q08 s2q08fff.
         S2Q09 s2q09fff. S2Q10 s2q10fff. S2Q11 s2q11fff.
         S2Q12 s2q12fff. S2Q13 s2q13fff. S2Q14 s2q14fff.
         S2Q15 s2q15fff. S2Q16 s2q16fff. S2Q17 s2q17fff.
         S2Q18 s2q18fff. S2Q19 s2q19fff. S2Q20 s2q20fff.
         S2Q21 s2q21fff. S2Q22 s2q22fff. S2Q23 s2q23fff.
         S2Q24 s2q24fff. S2Q26 s2q26fff. S2Q35 s2q35fff.
         S2Q37 s2q37fff. S2Q38 s2q38fff. S2Q39 s2q39fff.
         S2Q40 s2q40fff. S2Q41 s2q41fff. S2Q42 s2q42fff.
         S2Q44 s2q44fff. S2Q47 s2q47fff. S2Q49 s2q49fff.
         S2Q50 s2q50fff. S2Q51 s2q51fff. S2Q52 s2q52fff.
         S2Q52A s2q52a. S2Q53 s2q53fff. S2Q54 s2q54fff.
         S2Q55X01 s2q55x0f. S2Q55X02 s2q55x1f. S2Q55X03 s2q55x2f.
         S2Q55X04 s2q55x3f. S2Q55X05 s2q55x4f. S2Q55X06 s2q55x5f.
         S2Q55X07 s2q55x6f. S2Q55X08 s2q55x7f. S2Q55X09 s2q55x8f.
         S2Q55X10 s2q55x9f. S2Q55X11 s2q5510f. S2Q55X12 s2q5511f.
         S2Q56 s2q56fff. S2Q59 s2q59fff. S2Q60 s2q60fff.
         S2Q61 s2q61fff. S2Q62 s2q62fff. S3Q01 s3q01fff.
         S3Q02 s3q02fff. S3Q04 s3q04fff. S3Q05 s3q05fff.
         S3Q03 s3q03fff. S4Q01 s4q01fff. S4Q02 s4q02fff.
         S4Q03R s4q03r. S4Q04R s4q04r. S4Q04A s4q04a.
         S4Q05R s4q05r. S4Q06R s4q06r. S4Q07 s4q07fff.
         S4Q08X01 s4q08x0f. S4Q08X02 s4q08x1f. S4Q08X03 s4q08x2f.
         S4Q08X04 s4q08x3f. S4Q08X05 s4q08x4f. S4Q08X06 s4q08x5f.
         S4Q08X07 s4q08x6f. S4Q08X08 s4q08x7f. S4Q08X09 s4q08x8f.
         S4Q08X10 s4q08x9f. S4Q08X11 s4q0810f. S4Q08X12 s4q0811f.
         S4Q08X13 s4q0812f. S4Q08X14 s4q0813f. S4Q08X15 s4q0814f.
         S4Q08X16 s4q0815f. S4Q09 s4q09fff. S4Q10 s4q10fff.
         S4Q13 s4q13fff. S4Q14X01 s4q14x0f. S4Q14X02 s4q14x1f.
         S4Q14X03 s4q14x2f. S4Q14X04 s4q14x3f. S4Q14X05 s4q14x4f.
         S4Q14X06 s4q14x5f. S4Q14X07 s4q14x6f. S4Q14X08 s4q14x7f.
         S4Q14X09 s4q14x8f. S4Q14X10 s4q14x9f. S4Q14X11 s4q1410f.
         S4Q14X13 s4q1411f. S4Q14X14 s4q1412f. S4Q14X15 s4q1413f.
         S4Q14X16 s4q1414f. S4Q15 s4q15fff. S4Q16 s4q16fff.
         S4Q17 s4q17fff. S4Q18X01 s4q18x0f. S4Q18X02 s4q18x1f.
         S4Q18X03 s4q18x2f. S4Q18X04 s4q18x3f. S4Q18X05 s4q18x4f.
         S4Q18X06 s4q18x5f. S4Q18X07 s4q18x6f. S4Q18X08 s4q18x7f.
         S4Q18X09 s4q18x8f. S4Q18X10 s4q18x9f. S4Q18X11 s4q1810f.
         S4Q18X13 s4q1811f. S4Q18X14 s4q1812f. S4Q18X15 s4q1813f.
         S4Q18X16 s4q1814f. S4Q23 s4q23fff. S4Q27 s4q27fff.
         S4Q28 s4q28fff. S4Q29 s4q29fff. S4Q30 s4q30fff.
         S5Q01 s5q01fff. S5Q02 s5q02fff. S5Q04 s5q04fff.
         S5Q06 s5q06fff. S5Q06A s5q06a. S5Q07 s5q07fff.
         S5Q07A s5q07a. S5Q08A s5q08a. S5Q08B s5q08b.
         S5Q09 s5q09fff. S5Q09A s5q09a. S5Q09B s5q09b.
         S5Q09C s5q09c. S5Q10 s5q10fff. S5Q10A s5q10a.
         S5Q10B s5q10b. S5Q10C s5q10c. S5Q13 s5q13fff.
         S5Q13A s5q13a. S6Q08 s6q08fff. S6Q09 s6q09fff.
         S6Q10 s6q10fff. S6Q11 s6q11fff. S6Q12 s6q12fff.
         S6Q13 s6q13fff. S6Q14 s6q14fff. S6Q15 s6q15fff.
         S6Q16 s6q16fff. S6Q17 s6q17fff. S6Q18 s6q18fff.
         S6Q19 s6q19fff. S6Q20 s6q20fff. S6Q21 s6q21fff.
         S6Q22 s6q22fff. S6Q23 s6q23fff. S6Q24 s6q24fff.
         S6Q25 s6q25fff. S6Q26 s6q26fff. S6Q27 s6q27fff.
         S6Q28 s6q28fff. S6Q29 s6q29fff. S6Q48 s6q48fff.
         S6Q49 s6q49fff. S6Q50 s6q50fff. S6Q51 s6q51fff.
         S6Q52 s6q52fff. S6Q53 s6q53fff. S6Q54 s6q54fff.
         S6Q55 s6q55fff. S6Q56X01 s6q56x0f. S6Q56X02 s6q56x1f.
         S6Q56X03 s6q56x2f. S6Q57 s6q57fff. S6Q58X01 s6q58x0f.
         S6Q58X02 s6q58x1f. S6Q58X03 s6q58x2f. S6Q59 s6q59fff.
         S6Q60R s6q60r. S6Q62 s6q62fff. S7Q01 s7q01fff.
         S7Q01F s7q01f. S7Q02R s7q02r. S7Q04 s7q04fff.
         S7Q09 s7q09fff. S7Q10 s7q10fff. S7Q11 s7q11fff.
         S7Q11A s7q11a. S7Q12 s7q12fff. S7Q13 s7q13fff.
         S7Q14 s7q14fff. S7Q15 s7q15fff. S7Q16 s7q16fff.
         S7Q17 s7q17fff. S7Q19 s7q19fff. S7Q20 s7q20fff.
         S7Q21 s7q21fff. S7Q22 s7q22fff. S7Q23 s7q23fff.
         S7Q26 s7q26fff. S7Q26A s7q26a. S7Q27 s7q27fff.
         S7Q28 s7q28fff. S7Q29 s7q29fff. S7Q30 s7q30fff.
         S7Q31 s7q31fff. S7Q32 s7q32fff. S7Q33 s7q33fff.
         S7Q34 s7q34fff. S7Q35 s7q35fff. S7Q36 s7q36fff.
         S7Q37 s7q37fff. S7Q38 s7q38fff. S7Q39 s7q39fff.
         S7Q40 s7q40fff. S7Q56 s7q56fff. S7Q45 s7q45fff.
         S7Q53 s7q53fff. S7Q52 s7q52fff. S7Q44 s7q44fff.
         S7Q41 s7q41fff. S7Q54 s7q54fff. S7Q59 s7q59fff.
         S7Q48 s7q48fff. S7Q62 s7q62fff. S7Q63 s7q63fff.
         S8Q01R s8q01r. S8Q03 s8q03fff. S8Q02R s8q02r.
         S8Q04 s8q04fff. S8Q05 s8q05fff. S8Q06 s8q06fff.
         S8Q07 s8q07fff. S8Q08 s8q08fff. S8Q09 s8q09fff.
         S8Q10 s8q10fff. S8Q11 s8q11fff. S8Q12 s8q12fff.
         S8Q13 s8q13fff. S8Q14 s8q14fff. S8Q15 s8q15fff.
         FAMSTRUC famstruc. S9Q05R s9q05r. S9Q08 s9q08fff.
         S9Q09 s9q09fff. S9Q10 s9q10fff. S9Q18 s9q18fff.
         S9Q19 s9q19fff. S9Q20 s9q20fff. S9Q15 s9q15fff.
         S9Q15A s9q15a. S9Q15B s9q15b. S9Q15C s9q15c.
         S9Q15D s9q15d. S9Q15E s9q15e. S9Q11B s9q11b.
         S10Q01 s10q01ff. S10Q02 s10q02ff. S10Q03 s10q03ff.
         S10Q04 s10q04ff. S10Q05 s10q05ff. S10Q06 s10q06ff.
         S10Q07 s10q07ff. S10Q08 s10q08ff. S11Q01 s11q01ff.
         RACER racer. RACEAIAN raceaian. RACEASIA raceasia.
         RACE_HI race_hi. S11Q03 s11q03ff. S11Q04 s11q04ff.
         S11Q05 s11q05ff. S11Q06R s11q06r. S11Q08 s11q08ff.
         POVERTY poverty. C11Q11 c11q11ff. C11Q11A c11q11a.
         C11Q11B c11q11b. S9Q34 s9q34fff.  ;

RUN ;
