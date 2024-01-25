DROP TABLE overdose_death2020;
DROP TABLE overdose_death2021;
DROP TABLE overdose_death2022;

CREATE TABLE overdose_death2020(
   Jurisdiction                      VARCHAR(20) NOT NULL PRIMARY KEY
  ,year                              INTEGER  NOT NULL
  ,"alldrug deaths"                  INTEGER  NOT NULL
  ,"alldrug rate"                    NUMERIC(4,1) NOT NULL
  ,"opioids deaths"                  INTEGER  NOT NULL
  ,"opioids rate"                    NUMERIC(4,1) NOT NULL
  ,"imfs deaths"                     INTEGER  NOT NULL
  ,"imfs rate"                       NUMERIC(6,1) NOT NULL
  ,"heroin deaths"                   INTEGER  NOT NULL
  ,"heroin rate"                     NUMERIC(6,1) NOT NULL
  ,"rxopioids deaths"                INTEGER  NOT NULL
  ,"rxopioids rate"                  NUMERIC(6,1) NOT NULL
  ,"stimulant deaths"                INTEGER  NOT NULL
  ,"stimulant rate"                  NUMERIC(4,1) NOT NULL
  ,"cocaine deaths"                  INTEGER  NOT NULL
  ,"cocaine rate"                    NUMERIC(6,1) NOT NULL
  ,"meth deaths"                     INTEGER  NOT NULL
  ,"meth rate"                       NUMERIC(6,1) NOT NULL
  ,"benzodiazepines deaths"          INTEGER  NOT NULL
  ,"benzodiazepines rate"            NUMERIC(6,1) NOT NULL
  ,"nonopioid sedatives deaths"      INTEGER  NOT NULL
  ,"nonopioid sedatives rate"        NUMERIC(6,1) NOT NULL
  ,"opioids percent"                 NUMERIC(4,1) NOT NULL
  ,"imfs percent"                    NUMERIC(4,1) NOT NULL
  ,"heroin percent"                  NUMERIC(4,1) NOT NULL
  ,"rxopioids percent"               NUMERIC(4,1) NOT NULL
  ,"stimulant percent"               NUMERIC(4,1) NOT NULL
  ,"cocaine percent"                 NUMERIC(4,1) NOT NULL
  ,"meth percent"                    NUMERIC(4,1) NOT NULL
  ,"benzodiazepines percent"         NUMERIC(4,1) NOT NULL
  ,"nonopioid sedatives percent"     NUMERIC(4,1) NOT NULL
  ,"Combo1 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo1 deaths"                   INTEGER  NOT NULL
  ,"Combo1 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo2 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo2 deaths"                   INTEGER  NOT NULL
  ,"Combo2 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo3 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo3 deaths"                   INTEGER  NOT NULL
  ,"Combo3 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo4 drugs"                    VARCHAR(75) NOT NULL
  ,"Combo4 deaths"                   INTEGER  NOT NULL
  ,"Combo4 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo5 drugs"                    VARCHAR(67) NOT NULL
  ,"Combo5 deaths"                   INTEGER  NOT NULL
  ,"Combo5 percent"                  NUMERIC(3,1) NOT NULL
  ,"opioids stim deaths"             INTEGER  NOT NULL
  ,"opioids stim percent"            NUMERIC(4,1) NOT NULL
  ,"opioids nostim deaths"           INTEGER  NOT NULL
  ,"opioids nostim percent"          NUMERIC(4,1) NOT NULL
  ,"stim noopioids deaths"           INTEGER  NOT NULL
  ,"stim noopioids percent"          NUMERIC(4,1) NOT NULL
  ,"noopioids nostim deaths"         INTEGER  NOT NULL
  ,"noopioids nostim percent"        NUMERIC(4,1) NOT NULL
  ,"carfentanil deaths"              INTEGER  NOT NULL
  ,"carfentanil percent"             NUMERIC(6,1) NOT NULL
  ,"parafluorofentanyl deaths"       INTEGER  NOT NULL
  ,"parafluorofentanyl percent"      NUMERIC(6,1) NOT NULL
  ,"other illegal opioids deaths"    INTEGER  NOT NULL
  ,"other illegal opioids percent"   NUMERIC(6,1) NOT NULL
  ,"nitazenes deaths"                INTEGER  NOT NULL
  ,"nitazenes percent"               NUMERIC(6,1) NOT NULL
  ,"isotonitazene deaths"            INTEGER  NOT NULL
  ,"isotonitazene percent"           NUMERIC(6,1) NOT NULL
  ,"metonitazene deaths"             INTEGER  NOT NULL
  ,"metonitazene percent"            NUMERIC(6,1) NOT NULL
  ,"illegal benzodiazepines deaths"  INTEGER  NOT NULL
  ,"illegal benzodiazepines percent" NUMERIC(6,1) NOT NULL
  ,"bromazolam deaths"               INTEGER  NOT NULL
  ,"bromazolam percent"              NUMERIC(6,1) NOT NULL
  ,"etizolam deaths"                 INTEGER  NOT NULL
  ,"etizolam percent"                NUMERIC(6,1) NOT NULL
  ,"flualprazolam deaths"            INTEGER  NOT NULL
  ,"flualprazolam percent"           NUMERIC(6,1) NOT NULL
  ,"kratom deaths"                   INTEGER  NOT NULL
  ,"kratom percent"                  NUMERIC(6,1) NOT NULL
  ,"cathinones deaths"               INTEGER  NOT NULL
  ,"cathinones percent"              NUMERIC(6,1) NOT NULL
  ,"xylazine deaths"                 INTEGER  NOT NULL
  ,"xylazine percent"                NUMERIC(6,1) NOT NULL
  ,"jan deaths"                      INTEGER  NOT NULL
  ,"feb deaths"                      INTEGER  NOT NULL
  ,"mar deaths"                      INTEGER  NOT NULL
  ,"apr deaths"                      INTEGER  NOT NULL
  ,"may deaths"                      INTEGER  NOT NULL
  ,"jun deaths"                      INTEGER  NOT NULL
  ,"jul deaths"                      INTEGER  NOT NULL
  ,"aug deaths"                      INTEGER  NOT NULL
  ,"sep deaths"                      INTEGER  NOT NULL
  ,"oct deaths"                      INTEGER  NOT NULL
  ,"nov deaths"                      INTEGER  NOT NULL
  ,"dec deaths"                      INTEGER  NOT NULL
  ,"male deaths"                     INTEGER  NOT NULL
  ,"male rate"                       NUMERIC(5,1) NOT NULL
  ,"male percent"                    NUMERIC(4,1) NOT NULL
  ,"female deaths"                   INTEGER  NOT NULL
  ,"female rate"                     NUMERIC(4,1) NOT NULL
  ,"female percent"                  NUMERIC(4,1) NOT NULL
  ,"aian nh deaths"                  INTEGER  NOT NULL
  ,"aian nh rate"                    NUMERIC(6,1) NOT NULL
  ,"aian nh percent"                 NUMERIC(4,1) NOT NULL
  ,"asian nh deaths"                 INTEGER  NOT NULL
  ,"asian nh rate"                   NUMERIC(5,1) NOT NULL
  ,"asian nh percent"                NUMERIC(4,1) NOT NULL
  ,"black nh deaths"                 INTEGER  NOT NULL
  ,"black nh rate"                   NUMERIC(6,1) NOT NULL
  ,"black nh percent"                NUMERIC(4,1) NOT NULL
  ,"multi nh deaths"                 INTEGER  NOT NULL
  ,"multi nh rate"                   NUMERIC(5,1) NOT NULL
  ,"multi nh percent"                NUMERIC(4,1) NOT NULL
  ,"nhpi nh deaths"                  INTEGER  NOT NULL
  ,"nhpi nh rate"                    NUMERIC(5,1) NOT NULL
  ,"nhpi nh percent"                 NUMERIC(4,1) NOT NULL
  ,"white nh deaths"                 INTEGER  NOT NULL
  ,"white nh rate"                   NUMERIC(4,1) NOT NULL
  ,"white nh percent"                NUMERIC(4,1) NOT NULL
  ,"hisp deaths"                     INTEGER  NOT NULL
  ,"hisp rate"                       NUMERIC(6,1) NOT NULL
  ,"hisp percent"                    NUMERIC(4,1) NOT NULL
  ,"age under15 deaths"              INTEGER  NOT NULL
  ,"age under15 rate"                NUMERIC(5,1) NOT NULL
  ,"age under15 percent"             NUMERIC(3,1) NOT NULL
  ,"age 15 24 deaths"                INTEGER  NOT NULL
  ,"age 15 24 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 15 24 percent"               NUMERIC(4,1) NOT NULL
  ,"age 25 34 deaths"                INTEGER  NOT NULL
  ,"age 25 34 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 25 34 percent"               NUMERIC(4,1) NOT NULL
  ,"age 35 44 deaths"                INTEGER  NOT NULL
  ,"age 35 44 rate"                  NUMERIC(5,1) NOT NULL
  ,"age 35 44 percent"               NUMERIC(4,1) NOT NULL
  ,"age 45 54 deaths"                INTEGER  NOT NULL
  ,"age 45 54 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 45 54 percent"               NUMERIC(4,1) NOT NULL
  ,"age 55 64 deaths"                INTEGER  NOT NULL
  ,"age 55 64 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 55 64 percent"               NUMERIC(4,1) NOT NULL
  ,"age 65plus deaths"               INTEGER  NOT NULL
  ,"age 65plus rate"                 NUMERIC(6,1) NOT NULL
  ,"age 65plus percent"              NUMERIC(4,1) NOT NULL
  ,"male under15 deaths"             INTEGER  NOT NULL
  ,"male under15 rate"               NUMERIC(5,1) NOT NULL
  ,"male under15 percent"            NUMERIC(3,1) NOT NULL
  ,"male 15 24 deaths"               INTEGER  NOT NULL
  ,"male 15 24 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 15 24 percent"              NUMERIC(4,1) NOT NULL
  ,"male 25 34 deaths"               INTEGER  NOT NULL
  ,"male 25 34 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 25 34 percent"              NUMERIC(4,1) NOT NULL
  ,"male 35 44 deaths"               INTEGER  NOT NULL
  ,"male 35 44 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 35 44 percent"              NUMERIC(4,1) NOT NULL
  ,"male 45 54 deaths"               INTEGER  NOT NULL
  ,"male 45 54 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 45 54 percent"              NUMERIC(4,1) NOT NULL
  ,"male 55 64 deaths"               INTEGER  NOT NULL
  ,"male 55 64 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 55 64 percent"              NUMERIC(4,1) NOT NULL
  ,"male 65plus deaths"              INTEGER  NOT NULL
  ,"male 65plus rate"                NUMERIC(6,1) NOT NULL
  ,"male 65plus percent"             NUMERIC(4,1) NOT NULL
  ,"female under15 deaths"           INTEGER  NOT NULL
  ,"female under15 rate"             NUMERIC(5,1) NOT NULL
  ,"female under15 percent"          NUMERIC(3,1) NOT NULL
  ,"female 15 24 deaths"             INTEGER  NOT NULL
  ,"female 15 24 rate"               NUMERIC(6,1) NOT NULL
  ,"female 15 24 percent"            NUMERIC(4,1) NOT NULL
  ,"female 25 34 deaths"             INTEGER  NOT NULL
  ,"female 25 34 rate"               NUMERIC(6,1) NOT NULL
  ,"female 25 34 percent"            NUMERIC(4,1) NOT NULL
  ,"female 35 44 deaths"             INTEGER  NOT NULL
  ,"female 35 44 rate"               NUMERIC(6,1) NOT NULL
  ,"female 35 44 percent"            NUMERIC(4,1) NOT NULL
  ,"female 45 54 deaths"             INTEGER  NOT NULL
  ,"female 45 54 rate"               NUMERIC(6,1) NOT NULL
  ,"female 45 54 percent"            NUMERIC(4,1) NOT NULL
  ,"female 55 64 deaths"             INTEGER  NOT NULL
  ,"female 55 64 rate"               NUMERIC(6,1) NOT NULL
  ,"female 55 64 percent"            NUMERIC(4,1) NOT NULL
  ,"female 65plus deaths"            INTEGER  NOT NULL
  ,"female 65plus rate"              NUMERIC(6,1) NOT NULL
  ,"female 65plus percent"           NUMERIC(4,1) NOT NULL
  ,"intervopp deaths"                INTEGER  NOT NULL
  ,"intervopp percent"               NUMERIC(4,1) NOT NULL
  ,"curr SUDtrt deaths"              INTEGER  NOT NULL
  ,"curr SUDtrt percent"             NUMERIC(4,1) NOT NULL
  ,"drugusewitnessed deaths"         INTEGER  NOT NULL
  ,"drugusewitnessed percent"        NUMERIC(4,1) NOT NULL
  ,"mhdiag deaths"                   INTEGER  NOT NULL
  ,"mhdiag percent"                  NUMERIC(4,1) NOT NULL
  ,"bystander deaths"                INTEGER  NOT NULL
  ,"bystander percent"               NUMERIC(4,1) NOT NULL
  ,"priorod deaths"                  INTEGER  NOT NULL
  ,"priorod percent"                 NUMERIC(4,1) NOT NULL
  ,"recentrelease deaths"            INTEGER  NOT NULL
  ,"recentrelease percent"           NUMERIC(4,1) NOT NULL
  ,"byst noresp deaths"              INTEGER  NOT NULL
  ,"byst noresp percent"             NUMERIC(4,1) NOT NULL
  ,"byst space deaths"               INTEGER  NOT NULL
  ,"byst space percent"              NUMERIC(4,1) NOT NULL
  ,"byst unaware deaths"             INTEGER  NOT NULL
  ,"byst unaware percent"            NUMERIC(4,1) NOT NULL
  ,"byst notrecog deaths"            INTEGER  NOT NULL
  ,"byst notrecog percent"           NUMERIC(4,1) NOT NULL
  ,"byst notrecog od deaths"         INTEGER  NOT NULL
  ,"byst notrecog od percent"        NUMERIC(4,1) NOT NULL
  ,"byst sub alc deaths"             INTEGER  NOT NULL
  ,"byst sub alc percent"            NUMERIC(4,1) NOT NULL
  ,"byst publicspace deaths"         INTEGER  NOT NULL
  ,"byst publicspace percent"        NUMERIC(4,1) NOT NULL
  ,"hx anydrug deaths"               INTEGER  NOT NULL
  ,"hx anydrug percent"              NUMERIC(4,1) NOT NULL
  ,"hx opioid deaths"                INTEGER  NOT NULL
  ,"hx opioid percent"               NUMERIC(4,1) NOT NULL
  ,"hx stim deaths"                  INTEGER  NOT NULL
  ,"hx stim percent"                 NUMERIC(4,1) NOT NULL
  ,"recentopioid deaths"             INTEGER  NOT NULL
  ,"recentopioid percent"            NUMERIC(4,1) NOT NULL
  ,"priorod mon deaths"              INTEGER  NOT NULL
  ,"priorod mon percent"             NUMERIC(3,1) NOT NULL
  ,"ever MHSUDtrt deaths"            INTEGER  NOT NULL
  ,"ever MHSUDtrt percent"           NUMERIC(4,1) NOT NULL
  ,"curr MHSUDtrt deaths"            INTEGER  NOT NULL
  ,"curr MHSUDtrt percent"           NUMERIC(4,1) NOT NULL
  ,"hx selfharm deaths"              INTEGER  NOT NULL
  ,"hx selfharm percent"             NUMERIC(4,1) NOT NULL
  ,"od house apt deaths"             INTEGER  NOT NULL
  ,"od house apt percent"            NUMERIC(4,1) NOT NULL
  ,"od home deaths"                  INTEGER  NOT NULL
  ,"od home percent"                 NUMERIC(4,1) NOT NULL
  ,"od hotel deaths"                 INTEGER  NOT NULL
  ,"od hotel percent"                NUMERIC(4,1) NOT NULL
  ,"homeless deaths"                 INTEGER  NOT NULL
  ,"homeless percent"                NUMERIC(4,1) NOT NULL
  ,"curr paintrt deaths"             INTEGER  NOT NULL
  ,"curr paintrt percent"            NUMERIC(4,1) NOT NULL
  ,"nopulse deaths"                  INTEGER  NOT NULL
  ,"nopulse percent"                 NUMERIC(4,1) NOT NULL
  ,"naloxone deaths"                 INTEGER  NOT NULL
  ,"naloxone percent"                NUMERIC(4,1) NOT NULL
  ,"ed deaths"                       INTEGER  NOT NULL
  ,"ed percent"                      NUMERIC(4,1) NOT NULL
  ,"hospital deaths"                 INTEGER  NOT NULL
  ,"hospital percent"                NUMERIC(4,1) NOT NULL
  ,"ingestion deaths"                INTEGER  NOT NULL
  ,"ingestion percent"               NUMERIC(4,1) NOT NULL
  ,"injection deaths"                INTEGER  NOT NULL
  ,"injection percent"               NUMERIC(4,1) NOT NULL
  ,"smoking deaths"                  INTEGER  NOT NULL
  ,"smoking percent"                 NUMERIC(4,1) NOT NULL
  ,"snorting deaths"                 INTEGER  NOT NULL
  ,"snorting percent"                NUMERIC(4,1) NOT NULL
  ,"otherroute deaths"               INTEGER  NOT NULL
  ,"otherroute percent"              NUMERIC(3,1) NOT NULL
  ,"noroute deaths"                  INTEGER  NOT NULL
  ,"noroute percent"                 NUMERIC(4,1) NOT NULL
  ,"rx drugs deaths"                 INTEGER  NOT NULL
  ,"rx drugs percent"                NUMERIC(4,1) NOT NULL
  ,"illegal drugs deaths"            INTEGER  NOT NULL
  ,"illegal drugs percent"           NUMERIC(4,1) NOT NULL
  ,"counterfeit pills deaths"        INTEGER  NOT NULL
  ,"counterfeit pills percent"       NUMERIC(4,1) NOT NULL
  ,"evertx deaths"                   INTEGER  NOT NULL
  ,"evertx percent"                  NUMERIC(4,1) NOT NULL
  ,"rx OUD deaths"                   INTEGER  NOT NULL
  ,"rx OUD percent"                  NUMERIC(4,1) NOT NULL
);


CREATE TABLE overdose_death2021(
   Jurisdiction                      VARCHAR(20) NOT NULL PRIMARY KEY
  ,year                              INTEGER  NOT NULL
  ,"alldrug deaths"                  INTEGER  NOT NULL
  ,"alldrug rate"                    NUMERIC(4,1) NOT NULL
  ,"opioids deaths"                  INTEGER  NOT NULL
  ,"opioids rate"                    NUMERIC(4,1) NOT NULL
  ,"imfs deaths"                     INTEGER  NOT NULL
  ,"imfs rate"                       NUMERIC(6,1) NOT NULL
  ,"heroin deaths"                   INTEGER  NOT NULL
  ,"heroin rate"                     NUMERIC(6,1) NOT NULL
  ,"rxopioids deaths"                INTEGER  NOT NULL
  ,"rxopioids rate"                  NUMERIC(6,1) NOT NULL
  ,"stimulant deaths"                INTEGER  NOT NULL
  ,"stimulant rate"                  NUMERIC(4,1) NOT NULL
  ,"cocaine deaths"                  INTEGER  NOT NULL
  ,"cocaine rate"                    NUMERIC(6,1) NOT NULL
  ,"meth deaths"                     INTEGER  NOT NULL
  ,"meth rate"                       NUMERIC(6,1) NOT NULL
  ,"benzodiazepines deaths"          INTEGER  NOT NULL
  ,"benzodiazepines rate"            NUMERIC(6,1) NOT NULL
  ,"nonopioid sedatives deaths"      INTEGER  NOT NULL
  ,"nonopioid sedatives rate"        NUMERIC(6,1) NOT NULL
  ,"opioids percent"                 NUMERIC(4,1) NOT NULL
  ,"imfs percent"                    NUMERIC(4,1) NOT NULL
  ,"heroin percent"                  NUMERIC(4,1) NOT NULL
  ,"rxopioids percent"               NUMERIC(4,1) NOT NULL
  ,"stimulant percent"               NUMERIC(4,1) NOT NULL
  ,"cocaine percent"                 NUMERIC(4,1) NOT NULL
  ,"meth percent"                    NUMERIC(4,1) NOT NULL
  ,"benzodiazepines percent"         NUMERIC(4,1) NOT NULL
  ,"nonopioid sedatives percent"     NUMERIC(4,1) NOT NULL
  ,"Combo1 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo1 deaths"                   INTEGER  NOT NULL
  ,"Combo1 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo2 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo2 deaths"                   INTEGER  NOT NULL
  ,"Combo2 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo3 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo3 deaths"                   INTEGER  NOT NULL
  ,"Combo3 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo4 drugs"                    VARCHAR(75) NOT NULL
  ,"Combo4 deaths"                   INTEGER  NOT NULL
  ,"Combo4 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo5 drugs"                    VARCHAR(67) NOT NULL
  ,"Combo5 deaths"                   INTEGER  NOT NULL
  ,"Combo5 percent"                  NUMERIC(3,1) NOT NULL
  ,"opioids stim deaths"             INTEGER  NOT NULL
  ,"opioids stim percent"            NUMERIC(4,1) NOT NULL
  ,"opioids nostim deaths"           INTEGER  NOT NULL
  ,"opioids nostim percent"          NUMERIC(4,1) NOT NULL
  ,"stim noopioids deaths"           INTEGER  NOT NULL
  ,"stim noopioids percent"          NUMERIC(4,1) NOT NULL
  ,"noopioids nostim deaths"         INTEGER  NOT NULL
  ,"noopioids nostim percent"        NUMERIC(4,1) NOT NULL
  ,"carfentanil deaths"              INTEGER  NOT NULL
  ,"carfentanil percent"             NUMERIC(6,1) NOT NULL
  ,"parafluorofentanyl deaths"       INTEGER  NOT NULL
  ,"parafluorofentanyl percent"      NUMERIC(6,1) NOT NULL
  ,"other illegal opioids deaths"    INTEGER  NOT NULL
  ,"other illegal opioids percent"   NUMERIC(6,1) NOT NULL
  ,"nitazenes deaths"                INTEGER  NOT NULL
  ,"nitazenes percent"               NUMERIC(6,1) NOT NULL
  ,"isotonitazene deaths"            INTEGER  NOT NULL
  ,"isotonitazene percent"           NUMERIC(6,1) NOT NULL
  ,"metonitazene deaths"             INTEGER  NOT NULL
  ,"metonitazene percent"            NUMERIC(6,1) NOT NULL
  ,"illegal benzodiazepines deaths"  INTEGER  NOT NULL
  ,"illegal benzodiazepines percent" NUMERIC(6,1) NOT NULL
  ,"bromazolam deaths"               INTEGER  NOT NULL
  ,"bromazolam percent"              NUMERIC(6,1) NOT NULL
  ,"etizolam deaths"                 INTEGER  NOT NULL
  ,"etizolam percent"                NUMERIC(6,1) NOT NULL
  ,"flualprazolam deaths"            INTEGER  NOT NULL
  ,"flualprazolam percent"           NUMERIC(6,1) NOT NULL
  ,"kratom deaths"                   INTEGER  NOT NULL
  ,"kratom percent"                  NUMERIC(6,1) NOT NULL
  ,"cathinones deaths"               INTEGER  NOT NULL
  ,"cathinones percent"              NUMERIC(6,1) NOT NULL
  ,"xylazine deaths"                 INTEGER  NOT NULL
  ,"xylazine percent"                NUMERIC(6,1) NOT NULL
  ,"jan deaths"                      INTEGER  NOT NULL
  ,"feb deaths"                      INTEGER  NOT NULL
  ,"mar deaths"                      INTEGER  NOT NULL
  ,"apr deaths"                      INTEGER  NOT NULL
  ,"may deaths"                      INTEGER  NOT NULL
  ,"jun deaths"                      INTEGER  NOT NULL
  ,"jul deaths"                      INTEGER  NOT NULL
  ,"aug deaths"                      INTEGER  NOT NULL
  ,"sep deaths"                      INTEGER  NOT NULL
  ,"oct deaths"                      INTEGER  NOT NULL
  ,"nov deaths"                      INTEGER  NOT NULL
  ,"dec deaths"                      INTEGER  NOT NULL
  ,"male deaths"                     INTEGER  NOT NULL
  ,"male rate"                       NUMERIC(5,1) NOT NULL
  ,"male percent"                    NUMERIC(4,1) NOT NULL
  ,"female deaths"                   INTEGER  NOT NULL
  ,"female rate"                     NUMERIC(4,1) NOT NULL
  ,"female percent"                  NUMERIC(4,1) NOT NULL
  ,"aian nh deaths"                  INTEGER  NOT NULL
  ,"aian nh rate"                    NUMERIC(6,1) NOT NULL
  ,"aian nh percent"                 NUMERIC(4,1) NOT NULL
  ,"asian nh deaths"                 INTEGER  NOT NULL
  ,"asian nh rate"                   NUMERIC(5,1) NOT NULL
  ,"asian nh percent"                NUMERIC(4,1) NOT NULL
  ,"black nh deaths"                 INTEGER  NOT NULL
  ,"black nh rate"                   NUMERIC(6,1) NOT NULL
  ,"black nh percent"                NUMERIC(4,1) NOT NULL
  ,"multi nh deaths"                 INTEGER  NOT NULL
  ,"multi nh rate"                   NUMERIC(5,1) NOT NULL
  ,"multi nh percent"                NUMERIC(4,1) NOT NULL
  ,"nhpi nh deaths"                  INTEGER  NOT NULL
  ,"nhpi nh rate"                    NUMERIC(5,1) NOT NULL
  ,"nhpi nh percent"                 NUMERIC(4,1) NOT NULL
  ,"white nh deaths"                 INTEGER  NOT NULL
  ,"white nh rate"                   NUMERIC(4,1) NOT NULL
  ,"white nh percent"                NUMERIC(4,1) NOT NULL
  ,"hisp deaths"                     INTEGER  NOT NULL
  ,"hisp rate"                       NUMERIC(6,1) NOT NULL
  ,"hisp percent"                    NUMERIC(4,1) NOT NULL
  ,"age under15 deaths"              INTEGER  NOT NULL
  ,"age under15 rate"                NUMERIC(5,1) NOT NULL
  ,"age under15 percent"             NUMERIC(3,1) NOT NULL
  ,"age 15 24 deaths"                INTEGER  NOT NULL
  ,"age 15 24 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 15 24 percent"               NUMERIC(4,1) NOT NULL
  ,"age 25 34 deaths"                INTEGER  NOT NULL
  ,"age 25 34 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 25 34 percent"               NUMERIC(4,1) NOT NULL
  ,"age 35 44 deaths"                INTEGER  NOT NULL
  ,"age 35 44 rate"                  NUMERIC(5,1) NOT NULL
  ,"age 35 44 percent"               NUMERIC(4,1) NOT NULL
  ,"age 45 54 deaths"                INTEGER  NOT NULL
  ,"age 45 54 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 45 54 percent"               NUMERIC(4,1) NOT NULL
  ,"age 55 64 deaths"                INTEGER  NOT NULL
  ,"age 55 64 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 55 64 percent"               NUMERIC(4,1) NOT NULL
  ,"age 65plus deaths"               INTEGER  NOT NULL
  ,"age 65plus rate"                 NUMERIC(6,1) NOT NULL
  ,"age 65plus percent"              NUMERIC(4,1) NOT NULL
  ,"male under15 deaths"             INTEGER  NOT NULL
  ,"male under15 rate"               NUMERIC(5,1) NOT NULL
  ,"male under15 percent"            NUMERIC(3,1) NOT NULL
  ,"male 15 24 deaths"               INTEGER  NOT NULL
  ,"male 15 24 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 15 24 percent"              NUMERIC(4,1) NOT NULL
  ,"male 25 34 deaths"               INTEGER  NOT NULL
  ,"male 25 34 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 25 34 percent"              NUMERIC(4,1) NOT NULL
  ,"male 35 44 deaths"               INTEGER  NOT NULL
  ,"male 35 44 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 35 44 percent"              NUMERIC(4,1) NOT NULL
  ,"male 45 54 deaths"               INTEGER  NOT NULL
  ,"male 45 54 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 45 54 percent"              NUMERIC(4,1) NOT NULL
  ,"male 55 64 deaths"               INTEGER  NOT NULL
  ,"male 55 64 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 55 64 percent"              NUMERIC(4,1) NOT NULL
  ,"male 65plus deaths"              INTEGER  NOT NULL
  ,"male 65plus rate"                NUMERIC(6,1) NOT NULL
  ,"male 65plus percent"             NUMERIC(4,1) NOT NULL
  ,"female under15 deaths"           INTEGER  NOT NULL
  ,"female under15 rate"             NUMERIC(5,1) NOT NULL
  ,"female under15 percent"          NUMERIC(3,1) NOT NULL
  ,"female 15 24 deaths"             INTEGER  NOT NULL
  ,"female 15 24 rate"               NUMERIC(6,1) NOT NULL
  ,"female 15 24 percent"            NUMERIC(4,1) NOT NULL
  ,"female 25 34 deaths"             INTEGER  NOT NULL
  ,"female 25 34 rate"               NUMERIC(6,1) NOT NULL
  ,"female 25 34 percent"            NUMERIC(4,1) NOT NULL
  ,"female 35 44 deaths"             INTEGER  NOT NULL
  ,"female 35 44 rate"               NUMERIC(6,1) NOT NULL
  ,"female 35 44 percent"            NUMERIC(4,1) NOT NULL
  ,"female 45 54 deaths"             INTEGER  NOT NULL
  ,"female 45 54 rate"               NUMERIC(6,1) NOT NULL
  ,"female 45 54 percent"            NUMERIC(4,1) NOT NULL
  ,"female 55 64 deaths"             INTEGER  NOT NULL
  ,"female 55 64 rate"               NUMERIC(6,1) NOT NULL
  ,"female 55 64 percent"            NUMERIC(4,1) NOT NULL
  ,"female 65plus deaths"            INTEGER  NOT NULL
  ,"female 65plus rate"              NUMERIC(6,1) NOT NULL
  ,"female 65plus percent"           NUMERIC(4,1) NOT NULL
  ,"intervopp deaths"                INTEGER  NOT NULL
  ,"intervopp percent"               NUMERIC(4,1) NOT NULL
  ,"curr SUDtrt deaths"              INTEGER  NOT NULL
  ,"curr SUDtrt percent"             NUMERIC(4,1) NOT NULL
  ,"drugusewitnessed deaths"         INTEGER  NOT NULL
  ,"drugusewitnessed percent"        NUMERIC(4,1) NOT NULL
  ,"mhdiag deaths"                   INTEGER  NOT NULL
  ,"mhdiag percent"                  NUMERIC(4,1) NOT NULL
  ,"bystander deaths"                INTEGER  NOT NULL
  ,"bystander percent"               NUMERIC(4,1) NOT NULL
  ,"priorod deaths"                  INTEGER  NOT NULL
  ,"priorod percent"                 NUMERIC(4,1) NOT NULL
  ,"recentrelease deaths"            INTEGER  NOT NULL
  ,"recentrelease percent"           NUMERIC(4,1) NOT NULL
  ,"byst noresp deaths"              INTEGER  NOT NULL
  ,"byst noresp percent"             NUMERIC(4,1) NOT NULL
  ,"byst space deaths"               INTEGER  NOT NULL
  ,"byst space percent"              NUMERIC(4,1) NOT NULL
  ,"byst unaware deaths"             INTEGER  NOT NULL
  ,"byst unaware percent"            NUMERIC(4,1) NOT NULL
  ,"byst notrecog deaths"            INTEGER  NOT NULL
  ,"byst notrecog percent"           NUMERIC(4,1) NOT NULL
  ,"byst notrecog od deaths"         INTEGER  NOT NULL
  ,"byst notrecog od percent"        NUMERIC(4,1) NOT NULL
  ,"byst sub alc deaths"             INTEGER  NOT NULL
  ,"byst sub alc percent"            NUMERIC(4,1) NOT NULL
  ,"byst publicspace deaths"         INTEGER  NOT NULL
  ,"byst publicspace percent"        NUMERIC(4,1) NOT NULL
  ,"hx anydrug deaths"               INTEGER  NOT NULL
  ,"hx anydrug percent"              NUMERIC(4,1) NOT NULL
  ,"hx opioid deaths"                INTEGER  NOT NULL
  ,"hx opioid percent"               NUMERIC(4,1) NOT NULL
  ,"hx stim deaths"                  INTEGER  NOT NULL
  ,"hx stim percent"                 NUMERIC(4,1) NOT NULL
  ,"recentopioid deaths"             INTEGER  NOT NULL
  ,"recentopioid percent"            NUMERIC(4,1) NOT NULL
  ,"priorod mon deaths"              INTEGER  NOT NULL
  ,"priorod mon percent"             NUMERIC(3,1) NOT NULL
  ,"ever MHSUDtrt deaths"            INTEGER  NOT NULL
  ,"ever MHSUDtrt percent"           NUMERIC(4,1) NOT NULL
  ,"curr MHSUDtrt deaths"            INTEGER  NOT NULL
  ,"curr MHSUDtrt percent"           NUMERIC(4,1) NOT NULL
  ,"hx selfharm deaths"              INTEGER  NOT NULL
  ,"hx selfharm percent"             NUMERIC(4,1) NOT NULL
  ,"od house apt deaths"             INTEGER  NOT NULL
  ,"od house apt percent"            NUMERIC(4,1) NOT NULL
  ,"od home deaths"                  INTEGER  NOT NULL
  ,"od home percent"                 NUMERIC(4,1) NOT NULL
  ,"od hotel deaths"                 INTEGER  NOT NULL
  ,"od hotel percent"                NUMERIC(4,1) NOT NULL
  ,"homeless deaths"                 INTEGER  NOT NULL
  ,"homeless percent"                NUMERIC(4,1) NOT NULL
  ,"curr paintrt deaths"             INTEGER  NOT NULL
  ,"curr paintrt percent"            NUMERIC(4,1) NOT NULL
  ,"nopulse deaths"                  INTEGER  NOT NULL
  ,"nopulse percent"                 NUMERIC(4,1) NOT NULL
  ,"naloxone deaths"                 INTEGER  NOT NULL
  ,"naloxone percent"                NUMERIC(4,1) NOT NULL
  ,"ed deaths"                       INTEGER  NOT NULL
  ,"ed percent"                      NUMERIC(4,1) NOT NULL
  ,"hospital deaths"                 INTEGER  NOT NULL
  ,"hospital percent"                NUMERIC(4,1) NOT NULL
  ,"ingestion deaths"                INTEGER  NOT NULL
  ,"ingestion percent"               NUMERIC(4,1) NOT NULL
  ,"injection deaths"                INTEGER  NOT NULL
  ,"injection percent"               NUMERIC(4,1) NOT NULL
  ,"smoking deaths"                  INTEGER  NOT NULL
  ,"smoking percent"                 NUMERIC(4,1) NOT NULL
  ,"snorting deaths"                 INTEGER  NOT NULL
  ,"snorting percent"                NUMERIC(4,1) NOT NULL
  ,"otherroute deaths"               INTEGER  NOT NULL
  ,"otherroute percent"              NUMERIC(3,1) NOT NULL
  ,"noroute deaths"                  INTEGER  NOT NULL
  ,"noroute percent"                 NUMERIC(4,1) NOT NULL
  ,"rx drugs deaths"                 INTEGER  NOT NULL
  ,"rx drugs percent"                NUMERIC(4,1) NOT NULL
  ,"illegal drugs deaths"            INTEGER  NOT NULL
  ,"illegal drugs percent"           NUMERIC(4,1) NOT NULL
  ,"counterfeit pills deaths"        INTEGER  NOT NULL
  ,"counterfeit pills percent"       NUMERIC(4,1) NOT NULL
  ,"evertx deaths"                   INTEGER  NOT NULL
  ,"evertx percent"                  NUMERIC(4,1) NOT NULL
  ,"rx OUD deaths"                   INTEGER  NOT NULL
  ,"rx OUD percent"                  NUMERIC(4,1) NOT NULL
);
CREATE TABLE overdose_death2022(
   Jurisdiction                      VARCHAR(20) NOT NULL PRIMARY KEY
  ,year                              INTEGER  NOT NULL
  ,"alldrug deaths"                  INTEGER  NOT NULL
  ,"alldrug rate"                    NUMERIC(4,1) NOT NULL
  ,"opioids deaths"                  INTEGER  NOT NULL
  ,"opioids rate"                    NUMERIC(4,1) NOT NULL
  ,"imfs deaths"                     INTEGER  NOT NULL
  ,"imfs rate"                       NUMERIC(6,1) NOT NULL
  ,"heroin deaths"                   INTEGER  NOT NULL
  ,"heroin rate"                     NUMERIC(6,1) NOT NULL
  ,"rxopioids deaths"                INTEGER  NOT NULL
  ,"rxopioids rate"                  NUMERIC(6,1) NOT NULL
  ,"stimulant deaths"                INTEGER  NOT NULL
  ,"stimulant rate"                  NUMERIC(4,1) NOT NULL
  ,"cocaine deaths"                  INTEGER  NOT NULL
  ,"cocaine rate"                    NUMERIC(6,1) NOT NULL
  ,"meth deaths"                     INTEGER  NOT NULL
  ,"meth rate"                       NUMERIC(6,1) NOT NULL
  ,"benzodiazepines deaths"          INTEGER  NOT NULL
  ,"benzodiazepines rate"            NUMERIC(6,1) NOT NULL
  ,"nonopioid sedatives deaths"      INTEGER  NOT NULL
  ,"nonopioid sedatives rate"        NUMERIC(6,1) NOT NULL
  ,"opioids percent"                 NUMERIC(4,1) NOT NULL
  ,"imfs percent"                    NUMERIC(4,1) NOT NULL
  ,"heroin percent"                  NUMERIC(4,1) NOT NULL
  ,"rxopioids percent"               NUMERIC(4,1) NOT NULL
  ,"stimulant percent"               NUMERIC(4,1) NOT NULL
  ,"cocaine percent"                 NUMERIC(4,1) NOT NULL
  ,"meth percent"                    NUMERIC(4,1) NOT NULL
  ,"benzodiazepines percent"         NUMERIC(4,1) NOT NULL
  ,"nonopioid sedatives percent"     NUMERIC(4,1) NOT NULL
  ,"Combo1 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo1 deaths"                   INTEGER  NOT NULL
  ,"Combo1 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo2 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo2 deaths"                   INTEGER  NOT NULL
  ,"Combo2 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo3 drugs"                    VARCHAR(60) NOT NULL
  ,"Combo3 deaths"                   INTEGER  NOT NULL
  ,"Combo3 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo4 drugs"                    VARCHAR(75) NOT NULL
  ,"Combo4 deaths"                   INTEGER  NOT NULL
  ,"Combo4 percent"                  NUMERIC(4,1) NOT NULL
  ,"Combo5 drugs"                    VARCHAR(67) NOT NULL
  ,"Combo5 deaths"                   INTEGER  NOT NULL
  ,"Combo5 percent"                  NUMERIC(3,1) NOT NULL
  ,"opioids stim deaths"             INTEGER  NOT NULL
  ,"opioids stim percent"            NUMERIC(4,1) NOT NULL
  ,"opioids nostim deaths"           INTEGER  NOT NULL
  ,"opioids nostim percent"          NUMERIC(4,1) NOT NULL
  ,"stim noopioids deaths"           INTEGER  NOT NULL
  ,"stim noopioids percent"          NUMERIC(4,1) NOT NULL
  ,"noopioids nostim deaths"         INTEGER  NOT NULL
  ,"noopioids nostim percent"        NUMERIC(4,1) NOT NULL
  ,"carfentanil deaths"              INTEGER  NOT NULL
  ,"carfentanil percent"             NUMERIC(6,1) NOT NULL
  ,"parafluorofentanyl deaths"       INTEGER  NOT NULL
  ,"parafluorofentanyl percent"      NUMERIC(6,1) NOT NULL
  ,"other illegal opioids deaths"    INTEGER  NOT NULL
  ,"other illegal opioids percent"   NUMERIC(6,1) NOT NULL
  ,"nitazenes deaths"                INTEGER  NOT NULL
  ,"nitazenes percent"               NUMERIC(6,1) NOT NULL
  ,"isotonitazene deaths"            INTEGER  NOT NULL
  ,"isotonitazene percent"           NUMERIC(6,1) NOT NULL
  ,"metonitazene deaths"             INTEGER  NOT NULL
  ,"metonitazene percent"            NUMERIC(6,1) NOT NULL
  ,"illegal benzodiazepines deaths"  INTEGER  NOT NULL
  ,"illegal benzodiazepines percent" NUMERIC(6,1) NOT NULL
  ,"bromazolam deaths"               INTEGER  NOT NULL
  ,"bromazolam percent"              NUMERIC(6,1) NOT NULL
  ,"etizolam deaths"                 INTEGER  NOT NULL
  ,"etizolam percent"                NUMERIC(6,1) NOT NULL
  ,"flualprazolam deaths"            INTEGER  NOT NULL
  ,"flualprazolam percent"           NUMERIC(6,1) NOT NULL
  ,"kratom deaths"                   INTEGER  NOT NULL
  ,"kratom percent"                  NUMERIC(6,1) NOT NULL
  ,"cathinones deaths"               INTEGER  NOT NULL
  ,"cathinones percent"              NUMERIC(6,1) NOT NULL
  ,"xylazine deaths"                 INTEGER  NOT NULL
  ,"xylazine percent"                NUMERIC(6,1) NOT NULL
  ,"jan deaths"                      INTEGER  NOT NULL
  ,"feb deaths"                      INTEGER  NOT NULL
  ,"mar deaths"                      INTEGER  NOT NULL
  ,"apr deaths"                      INTEGER  NOT NULL
  ,"may deaths"                      INTEGER  NOT NULL
  ,"jun deaths"                      INTEGER  NOT NULL
  ,"jul deaths"                      INTEGER  NOT NULL
  ,"aug deaths"                      INTEGER  NOT NULL
  ,"sep deaths"                      INTEGER  NOT NULL
  ,"oct deaths"                      INTEGER  NOT NULL
  ,"nov deaths"                      INTEGER  NOT NULL
  ,"dec deaths"                      INTEGER  NOT NULL
  ,"male deaths"                     INTEGER  NOT NULL
  ,"male rate"                       NUMERIC(5,1) NOT NULL
  ,"male percent"                    NUMERIC(4,1) NOT NULL
  ,"female deaths"                   INTEGER  NOT NULL
  ,"female rate"                     NUMERIC(4,1) NOT NULL
  ,"female percent"                  NUMERIC(4,1) NOT NULL
  ,"aian nh deaths"                  INTEGER  NOT NULL
  ,"aian nh rate"                    NUMERIC(6,1) NOT NULL
  ,"aian nh percent"                 NUMERIC(4,1) NOT NULL
  ,"asian nh deaths"                 INTEGER  NOT NULL
  ,"asian nh rate"                   NUMERIC(5,1) NOT NULL
  ,"asian nh percent"                NUMERIC(4,1) NOT NULL
  ,"black nh deaths"                 INTEGER  NOT NULL
  ,"black nh rate"                   NUMERIC(6,1) NOT NULL
  ,"black nh percent"                NUMERIC(4,1) NOT NULL
  ,"multi nh deaths"                 INTEGER  NOT NULL
  ,"multi nh rate"                   NUMERIC(5,1) NOT NULL
  ,"multi nh percent"                NUMERIC(4,1) NOT NULL
  ,"nhpi nh deaths"                  INTEGER  NOT NULL
  ,"nhpi nh rate"                    NUMERIC(5,1) NOT NULL
  ,"nhpi nh percent"                 NUMERIC(4,1) NOT NULL
  ,"white nh deaths"                 INTEGER  NOT NULL
  ,"white nh rate"                   NUMERIC(4,1) NOT NULL
  ,"white nh percent"                NUMERIC(4,1) NOT NULL
  ,"hisp deaths"                     INTEGER  NOT NULL
  ,"hisp rate"                       NUMERIC(6,1) NOT NULL
  ,"hisp percent"                    NUMERIC(4,1) NOT NULL
  ,"age under15 deaths"              INTEGER  NOT NULL
  ,"age under15 rate"                NUMERIC(5,1) NOT NULL
  ,"age under15 percent"             NUMERIC(3,1) NOT NULL
  ,"age 15 24 deaths"                INTEGER  NOT NULL
  ,"age 15 24 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 15 24 percent"               NUMERIC(4,1) NOT NULL
  ,"age 25 34 deaths"                INTEGER  NOT NULL
  ,"age 25 34 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 25 34 percent"               NUMERIC(4,1) NOT NULL
  ,"age 35 44 deaths"                INTEGER  NOT NULL
  ,"age 35 44 rate"                  NUMERIC(5,1) NOT NULL
  ,"age 35 44 percent"               NUMERIC(4,1) NOT NULL
  ,"age 45 54 deaths"                INTEGER  NOT NULL
  ,"age 45 54 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 45 54 percent"               NUMERIC(4,1) NOT NULL
  ,"age 55 64 deaths"                INTEGER  NOT NULL
  ,"age 55 64 rate"                  NUMERIC(6,1) NOT NULL
  ,"age 55 64 percent"               NUMERIC(4,1) NOT NULL
  ,"age 65plus deaths"               INTEGER  NOT NULL
  ,"age 65plus rate"                 NUMERIC(6,1) NOT NULL
  ,"age 65plus percent"              NUMERIC(4,1) NOT NULL
  ,"male under15 deaths"             INTEGER  NOT NULL
  ,"male under15 rate"               NUMERIC(5,1) NOT NULL
  ,"male under15 percent"            NUMERIC(3,1) NOT NULL
  ,"male 15 24 deaths"               INTEGER  NOT NULL
  ,"male 15 24 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 15 24 percent"              NUMERIC(4,1) NOT NULL
  ,"male 25 34 deaths"               INTEGER  NOT NULL
  ,"male 25 34 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 25 34 percent"              NUMERIC(4,1) NOT NULL
  ,"male 35 44 deaths"               INTEGER  NOT NULL
  ,"male 35 44 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 35 44 percent"              NUMERIC(4,1) NOT NULL
  ,"male 45 54 deaths"               INTEGER  NOT NULL
  ,"male 45 54 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 45 54 percent"              NUMERIC(4,1) NOT NULL
  ,"male 55 64 deaths"               INTEGER  NOT NULL
  ,"male 55 64 rate"                 NUMERIC(6,1) NOT NULL
  ,"male 55 64 percent"              NUMERIC(4,1) NOT NULL
  ,"male 65plus deaths"              INTEGER  NOT NULL
  ,"male 65plus rate"                NUMERIC(6,1) NOT NULL
  ,"male 65plus percent"             NUMERIC(4,1) NOT NULL
  ,"female under15 deaths"           INTEGER  NOT NULL
  ,"female under15 rate"             NUMERIC(5,1) NOT NULL
  ,"female under15 percent"          NUMERIC(3,1) NOT NULL
  ,"female 15 24 deaths"             INTEGER  NOT NULL
  ,"female 15 24 rate"               NUMERIC(6,1) NOT NULL
  ,"female 15 24 percent"            NUMERIC(4,1) NOT NULL
  ,"female 25 34 deaths"             INTEGER  NOT NULL
  ,"female 25 34 rate"               NUMERIC(6,1) NOT NULL
  ,"female 25 34 percent"            NUMERIC(4,1) NOT NULL
  ,"female 35 44 deaths"             INTEGER  NOT NULL
  ,"female 35 44 rate"               NUMERIC(6,1) NOT NULL
  ,"female 35 44 percent"            NUMERIC(4,1) NOT NULL
  ,"female 45 54 deaths"             INTEGER  NOT NULL
  ,"female 45 54 rate"               NUMERIC(6,1) NOT NULL
  ,"female 45 54 percent"            NUMERIC(4,1) NOT NULL
  ,"female 55 64 deaths"             INTEGER  NOT NULL
  ,"female 55 64 rate"               NUMERIC(6,1) NOT NULL
  ,"female 55 64 percent"            NUMERIC(4,1) NOT NULL
  ,"female 65plus deaths"            INTEGER  NOT NULL
  ,"female 65plus rate"              NUMERIC(6,1) NOT NULL
  ,"female 65plus percent"           NUMERIC(4,1) NOT NULL
  ,"intervopp deaths"                INTEGER  NOT NULL
  ,"intervopp percent"               NUMERIC(4,1) NOT NULL
  ,"curr SUDtrt deaths"              INTEGER  NOT NULL
  ,"curr SUDtrt percent"             NUMERIC(4,1) NOT NULL
  ,"drugusewitnessed deaths"         INTEGER  NOT NULL
  ,"drugusewitnessed percent"        NUMERIC(4,1) NOT NULL
  ,"mhdiag deaths"                   INTEGER  NOT NULL
  ,"mhdiag percent"                  NUMERIC(4,1) NOT NULL
  ,"bystander deaths"                INTEGER  NOT NULL
  ,"bystander percent"               NUMERIC(4,1) NOT NULL
  ,"priorod deaths"                  INTEGER  NOT NULL
  ,"priorod percent"                 NUMERIC(4,1) NOT NULL
  ,"recentrelease deaths"            INTEGER  NOT NULL
  ,"recentrelease percent"           NUMERIC(4,1) NOT NULL
  ,"byst noresp deaths"              INTEGER  NOT NULL
  ,"byst noresp percent"             NUMERIC(4,1) NOT NULL
  ,"byst space deaths"               INTEGER  NOT NULL
  ,"byst space percent"              NUMERIC(4,1) NOT NULL
  ,"byst unaware deaths"             INTEGER  NOT NULL
  ,"byst unaware percent"            NUMERIC(4,1) NOT NULL
  ,"byst notrecog deaths"            INTEGER  NOT NULL
  ,"byst notrecog percent"           NUMERIC(4,1) NOT NULL
  ,"byst notrecog od deaths"         INTEGER  NOT NULL
  ,"byst notrecog od percent"        NUMERIC(4,1) NOT NULL
  ,"byst sub alc deaths"             INTEGER  NOT NULL
  ,"byst sub alc percent"            NUMERIC(4,1) NOT NULL
  ,"byst publicspace deaths"         INTEGER  NOT NULL
  ,"byst publicspace percent"        NUMERIC(4,1) NOT NULL
  ,"hx anydrug deaths"               INTEGER  NOT NULL
  ,"hx anydrug percent"              NUMERIC(4,1) NOT NULL
  ,"hx opioid deaths"                INTEGER  NOT NULL
  ,"hx opioid percent"               NUMERIC(4,1) NOT NULL
  ,"hx stim deaths"                  INTEGER  NOT NULL
  ,"hx stim percent"                 NUMERIC(4,1) NOT NULL
  ,"recentopioid deaths"             INTEGER  NOT NULL
  ,"recentopioid percent"            NUMERIC(4,1) NOT NULL
  ,"priorod mon deaths"              INTEGER  NOT NULL
  ,"priorod mon percent"             NUMERIC(3,1) NOT NULL
  ,"ever MHSUDtrt deaths"            INTEGER  NOT NULL
  ,"ever MHSUDtrt percent"           NUMERIC(4,1) NOT NULL
  ,"curr MHSUDtrt deaths"            INTEGER  NOT NULL
  ,"curr MHSUDtrt percent"           NUMERIC(4,1) NOT NULL
  ,"hx selfharm deaths"              INTEGER  NOT NULL
  ,"hx selfharm percent"             NUMERIC(4,1) NOT NULL
  ,"od house apt deaths"             INTEGER  NOT NULL
  ,"od house apt percent"            NUMERIC(4,1) NOT NULL
  ,"od home deaths"                  INTEGER  NOT NULL
  ,"od home percent"                 NUMERIC(4,1) NOT NULL
  ,"od hotel deaths"                 INTEGER  NOT NULL
  ,"od hotel percent"                NUMERIC(4,1) NOT NULL
  ,"homeless deaths"                 INTEGER  NOT NULL
  ,"homeless percent"                NUMERIC(4,1) NOT NULL
  ,"curr paintrt deaths"             INTEGER  NOT NULL
  ,"curr paintrt percent"            NUMERIC(4,1) NOT NULL
  ,"nopulse deaths"                  INTEGER  NOT NULL
  ,"nopulse percent"                 NUMERIC(4,1) NOT NULL
  ,"naloxone deaths"                 INTEGER  NOT NULL
  ,"naloxone percent"                NUMERIC(4,1) NOT NULL
  ,"ed deaths"                       INTEGER  NOT NULL
  ,"ed percent"                      NUMERIC(4,1) NOT NULL
  ,"hospital deaths"                 INTEGER  NOT NULL
  ,"hospital percent"                NUMERIC(4,1) NOT NULL
  ,"ingestion deaths"                INTEGER  NOT NULL
  ,"ingestion percent"               NUMERIC(4,1) NOT NULL
  ,"injection deaths"                INTEGER  NOT NULL
  ,"injection percent"               NUMERIC(4,1) NOT NULL
  ,"smoking deaths"                  INTEGER  NOT NULL
  ,"smoking percent"                 NUMERIC(4,1) NOT NULL
  ,"snorting deaths"                 INTEGER  NOT NULL
  ,"snorting percent"                NUMERIC(4,1) NOT NULL
  ,"otherroute deaths"               INTEGER  NOT NULL
  ,"otherroute percent"              NUMERIC(3,1) NOT NULL
  ,"noroute deaths"                  INTEGER  NOT NULL
  ,"noroute percent"                 NUMERIC(4,1) NOT NULL
  ,"rx drugs deaths"                 INTEGER  NOT NULL
  ,"rx drugs percent"                NUMERIC(4,1) NOT NULL
  ,"illegal drugs deaths"            INTEGER  NOT NULL
  ,"illegal drugs percent"           NUMERIC(4,1) NOT NULL
  ,"counterfeit pills deaths"        INTEGER  NOT NULL
  ,"counterfeit pills percent"       NUMERIC(4,1) NOT NULL
  ,"evertx deaths"                   INTEGER  NOT NULL
  ,"evertx percent"                  NUMERIC(4,1) NOT NULL
  ,"rx OUD deaths"                   INTEGER  NOT NULL
  ,"rx OUD percent"                  NUMERIC(4,1) NOT NULL
);

SELECT * FROM overdose_death2020;
SELECT * FROM overdose_death2021;
SELECT * FROM overdose_death2022;