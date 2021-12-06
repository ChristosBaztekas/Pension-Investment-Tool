-- Notes  pre - choices && safety 
-- TODO all insertions from JASON - Investment Tool
-- Connection needs among tools tool TODO ! ! ! 

-- pre - choice gender 
CREATE TABLE Customer (
userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fullName VARCHAR(200),
userName VARCHAR(200),
gender VARCHAR(6),
userPassword VARCHAR(20),
email VARCHAR(70));
INSERT INTO Customer VALUES(1,'Evangelia panourgia', 'Eva', 'Female', '123456', 'eva@aueb.gr'); 
INSERT INTO Customer VALUES(2,'Sofoklis Stouraiths', 'Sofos', 'Male', '123455', 'sofos@aueb.gr'); 
SELECT * FROM customer;

-- pre - choice
CREATE TABLE PsycologicalProfile (
idTest INT NOT NULL PRIMARY KEY,
userid INT NOT NULL,
FOREIGN KEY (userid) REFERENCES Customer(userid),
answer1 VARCHAR(1),
answer2 VARCHAR(1),
answer3 VARCHAR(1),
answer4 VARCHAR(1),
answer5 VARCHAR(1),
answer6 VARCHAR(1),
answer7 VARCHAR(1),
answer8 VARCHAR(1),
answer9 VARCHAR(1)
);
INSERT INTO PsycologicalProfile VALUES (1,1,'A','B','A','C','A','A','A','A','A');
INSERT INTO PsycologicalProfile VALUES (2,2,'B','B','B','C','A','A','A','A','A');
SELECT * FROM PsycologicalProfile;

-- relation 1..1
SELECT * 
FROM PsycologicalProfile p, customer c
WHERE p.userid = c.userid; 

CREATE TABLE Tool (
toolid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nameTool VARCHAR(100),
toolDESCRIPTION VARCHAR(500)
);
INSERT INTO Tool VALUES(1,'Calculate Investment Value', 'Calculates the investment given the data user enters');
INSERT INTO Tool VALUES(2,'Calculate Advanced Pension Calculation Tool', 'Calculates the pension given the data user enters');
SELECT * FROM Tool;

CREATE TABLE CustomerTool(
userid INT NOT NULL,
toolid INT NOT NULL,
FOREIGN KEY (userid) REFERENCES Customer(userid),
FOREIGN KEY (toolid) REFERENCES Tool(toolid),
userid_toolid INT NOT NULL PRIMARY KEY,
access BOOLEAN
);
INSERT INTO CustomerTool VALUES (1,1,1, True);
INSERT INTO CustomerTool VALUES (2,2,2, True);
SELECT * FROM Customertool;

-- TODO calculation with all db two products ! ! !
-- safety && pre - choice 
CREATE TABLE CalculateInvestmentValue (
	idCalculateInvestmentValue INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marketChoice VARCHAR(200),
    namee VARCHAR(100),
    min INT(10)
);
INSERT CalculateInvestmentValue VALUES (1,"Nasdaq", "NASDAQ", 1992);
INSERT CalculateInvestmentValue VALUES (2,"FTSE", "Financial Times Stock Exchange", 1998);
INSERT CalculateInvestmentValue VALUES (3,"Dax","DAX", 1989);
INSERT CalculateInvestmentValue VALUES (4,"MSCI","Morgan Stanley Capital International",1970);
INSERT CalculateInvestmentValue VALUES (5,"WGBI","FTSE World Government Bond Index" , 1986);
INSERT CalculateInvestmentValue VALUES (6,"Xrimathsthrio Athinwn","Xrimathsthrio Athinwn", 1986); -- DONE UTF SUPPORT ! TODO
INSERT CalculateInvestmentValue VALUES (7,"Nikkei","Nikkei", 1987);
INSERT CalculateInvestmentValue VALUES (8, "Down Jones","Dow Jones Industrial",1987);
INSERT CalculateInvestmentValue VALUES (9, "S&P 500", "Standard & Poorâ€™s 500", 1987);
SELECT * FROM  calculateinvestmentvalue;
-- pre-choice
CREATE TABLE PerformanceYear(
	idCalculateInvestmentValue INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (idCalculateInvestmentValue) REFERENCES CalculateInvestmentValue(idCalculateInvestmentValue),
    performance1 FLOAT(6),
    performance2 FLOAT(6),
    performance3 FLOAT(6),
    performance4 FLOAT(6),
    performance5 FLOAT(6),
    performance6 FLOAT(6),
    performance7 FLOAT(6),
    performance8 FLOAT(6),
    performance9 FLOAT(6),
    performance10 FLOAT(6),
    performance11 FLOAT(6),
    performance12 FLOAT(6),
    performance13 FLOAT(6),
    performance14 FLOAT(6),
    performance15 FLOAT(6),
    performance16 FLOAT(6),
    performance17 FLOAT(6),
    performance18 FLOAT(6),
    performance19 FLOAT(6),
    performance20 FLOAT(6),
    performance21 FLOAT(6),
    performance22 FLOAT(6),
    performance23 FLOAT(6),
    performance24 FLOAT(6),
    performance25 FLOAT(6),
    performance26 FLOAT(6),
    performance27 FLOAT(6),
    performance28 FLOAT(6),
    performance29 FLOAT(6),
    performance30 FLOAT(6),
    year1 VARCHAR(20),
    year2 VARCHAR(20),
    year3 VARCHAR(20),
    year4 VARCHAR(20),
    year5 VARCHAR(20),
    year6 VARCHAR(20),
    year7 VARCHAR(20),
    year8 VARCHAR(20),
    year9 VARCHAR(20),
    year10 VARCHAR(20),
     year11 VARCHAR(20),
    year12 VARCHAR(20),
    year13 VARCHAR(20),
    year14 VARCHAR(20),
    year15 VARCHAR(20),
    year16 VARCHAR(20),
    year17 VARCHAR(20),
    year18 VARCHAR(20),
    year19 VARCHAR(20),
    year20 VARCHAR(20),
     year21 VARCHAR(20),
    year22 VARCHAR(20),
    year23 VARCHAR(20),
    year24 VARCHAR(20),
    year25 VARCHAR(20),
    year26 VARCHAR(20),
    year27 VARCHAR(20),
    year28 VARCHAR(20),
    year29 VARCHAR(20),
    year30 VARCHAR(20)
);
-- as markets all pre - choice
INSERT INTO performanceyear VALUES(1,49.76, 12.26, 14.94, -5.63, 40.4, 30.19, 17.32, 54.79,
            57.22, -29.62, -30.26, -31.7, 56.4, -0.19, 11.83, 6.85,
            -3.0, -38.24, 45.46, 25.76, 4.22, 11.66, 30.62, 12.94,
            -0.45, 21.69, 31.99, -1.74, 25.67, 42.84, 'Jan 92', 'Jan 93', 'Jan 94', 'Jan 95', 'Jan 96', 'Jan 97', 'Jan 98',
            'Jan 99', 'Jan 00', 'Jan 01', 'Jan 02', 'Jan 03', 'Jan 04', 'Jan 05',
            'Jan 06', 'Jan 07', 'Jan 08', 'Jan 09', 'Jan 10', 'Jan 11', 'Jan 12',
            'Jan 13', 'Jan 14', 'Jan 15', 'Jan 16', 'Jan 17', 'Jan 18', 'Jan 19',
            'Jan 20', 'Jan 21');
-- TODO ALL INERTIONS FROM JSON ! ! !
SELECT * FROM performanceyear;

drop Table AdvancedPensionCalculationTool;
-- insurance product 2 for safety TODO connection if it is necessary 
CREATE TABLE AdvancedPensionCalculationTool(
-- toolid INT NOT NULL PRIMARY KEY,
revenue INT(2),
year1 FLOAT(6),
year2 FLOAT(6),
year3 FLOAT(6),
year4 FLOAT(6),
year5 FLOAT(6),
year6 FLOAT(6),
year7 FLOAT(6),
year8 FLOAT(6),
year9 FLOAT(6),
year10 FLOAT(6),
year11 FLOAT(6),
year12 FLOAT(6),
year13 FLOAT(6),
year14 FLOAT(6),
year15 FLOAT(6),
year16 FLOAT(6),
year17 FLOAT(6),
year18 FLOAT(6),
year19 FLOAT(6),
year20 FLOAT(6),
year21 FLOAT(6),
year22 FLOAT(6),
year23 FLOAT(6),
year24 FLOAT(6),
year25 FLOAT(6),
year26 FLOAT(6),
year27 FLOAT(6),
year28 FLOAT(6),
year29 FLOAT(6),
year30 FLOAT(6),
year31 FLOAT(6),
year32 FLOAT(6),
year33 FLOAT(6),
year34 FLOAT(6),
year35 FLOAT(6),
year36 FLOAT(6),
year37 FLOAT(6),
year38 FLOAT(6),
year39 FLOAT(6),
year40 FLOAT(6)
-- FOREIGN KEY (toolid) REFERENCES Tool(toolid)
);
-- 3 down fix ! 
INSERT INTO AdvancedPensionCalculationTool VALUES (10, 0.1, 0.18543, 0.19567, 0.20, 0.22, 0.23, 0.24, 0.25,
    0.26, 0.45, 0.46, 0.47, 0.48, 0.49, 0.50, 0.51,
    0.54, 0.56462, 0.58462, 0.60970, 0.62432, 0.64194, 0.65976, 0.67666,
    0.69421, 0.70874, 0.72328, 0.73727, 0.75052, 0.76409, 0.77666, 0.79059,
    0.80227, 0.81000, 0.82168, 0.83442, 0.84777, 0.85613, 0.86931, 0.87265);
INSERT INTO AdvancedPensionCalculationTool VALUES (9, 0.08661, 0.09543, 0.10567, 0.19, 0.16285, 0.19289, 0.36837, 0.39247,
    0.40622, 0.44141, 0.45170, 0.46404, 0.46564, 0.48234, 0.49304, 0.51485,
    0.53486, 0.55962, 0.57962, 0.60470, 0.61932, 0.63694, 0.65476, 0.67166,
    0.68921, 0.70374, 0.71828, 0.73027, 0.74552, 0.75909, 0.77166, 0.78559,
    0.79727, 0.80500, 0.81668, 0.82942, 0.83277, 0.85113, 0.85331, 0.86765);
INSERT INTO AdvancedPensionCalculationTool VALUES (8, 0.07661, 0.08543, 0.09567, 0.14, 0.15785, 0.18789, 0.36337, 0.38747,
    0.40122, 0.43641, 0.44670, 0.45904, 0.46064, 0.47734, 0.48804, 0.50985,
    0.52986, 0.55462, 0.57462, 0.59970, 0.61432, 0.63194, 0.64976, 0.66666,
    0.68421, 0.69874, 0.71328, 0.72727, 0.74052, 0.75409, 0.76666, 0.78059,
    0.79227, 0.80000, 0.81168, 0.82442, 0.82777, 0.84613, 0.84931, 0.86265);
INSERT INTO AdvancedPensionCalculationTool VALUES (7, 0.07661, 0.08543, 0.09567, 0.14, 0.15785, 0.18789, 0.26337, 0.28747,
    0.30122, 0.32641, 0.34670, 0.36904, 0.38064, 0.41734, 0.44214, 0.46985,
    0.48986, 0.50433, 0.52222, 0.54370, 0.56281, 0.58055, 0.59786, 0.61394,
    0.63157, 0.64644, 0.66200, 0.67532, 0.69096, 0.70918, 0.71481, 0.72995,
    0.73913, 0.75000, 0.76623, 0.77099, 0.78181, 0.79032, 0.80123, 0.81965);
INSERT INTO AdvancedPensionCalculationTool VALUES (6, 0.05661, 0.07543, 0.11567, 0.13, 0.15785, 0.17789, 0.21337, 0.23747,
    0.26122, 0.28411, 0.30670, 0.32904, 0.35064, 0.37173, 0.39224, 0.41216,
    0.43129, 0.45077, 0.46935, 0.48759, 0.50424, 0.52227, 0.53828, 0.55485,
    0.57023, 0.58615, 0.60068, 0.61436, 0.62947, 0.64235, 0.65526, 0.66863,
    0.67892, 0.69201, 0.70434, 0.715, 0.72429, 0.73544, 0.74545, 0.75409);
INSERT INTO AdvancedPensionCalculationTool VALUES ( 5,  0.03661, 0.05543, 0.09567, 0.10, 0.13785, 0.15789, 0.20337, 0.22747,
    0.25122, 0.26411, 0.28670, 0.30904, 0.32064, 0.34173, 0.36, 0.38,
    0.39, 0.40, 0.41, 0.42759, 0.44424, 0.46227, 0.47828, 0.48639,
    0.50123, 0.51464, 0.52913, 0.54285, 0.55685, 0.57049, 0.58148, 0.5949,
    0.6086, 0.622, 0.62987, 0.64122, 0.65454, 0.67032, 0.67123, 0.68965);
INSERT INTO AdvancedPensionCalculationTool VALUES (4,  0.03661, 0.05543, 0.09567, 0.10, 0.13785, 0.15789, 0.20343, 0.23254,
    0.24235, 0.25233, 0.27534, 0.29456, 0.30444, 0.31345, 0.32345, 0.33435,
    0.34545, 0.35543, 0.36353, 0.37874, 0.38988, 0.39049, 0.40422, 0.41333,
    0.42323, 0.43533, 0.44755, 0.45974, 0.47230, 0.48524, 0.49629, 0.51054,
    0.52173, 0.53333, 0.54545, 0.55725, 0.56363, 0.58241, 0.58904, 0.60344);
INSERT INTO AdvancedPensionCalculationTool VALUES (3, 0.03661, 0.05543, 0.09567, 0.10, 0.13785, 0.15, 0.14999, 0.15999,
    0.16999, 0.17999, 0.20999, 0.21999, 0.22999, 0.23999, 0.24999, 0.25999,
    0.26999, 0.27999, 0.28999, 0.29759, 0.30999, 0.31999, 0.32999, 0.33999,
    0.34909, 0.35999, 0.36549, 0.37899, 0.38999, 0.39845, 0.40148, 0.40949,
    0.42086, 0.42777, 0.43506, 0.45038, 0.45454, 0.47032, 0.47923, 0.48965);
    
SELECT * FROM AdvancedPensionCalculationTool;