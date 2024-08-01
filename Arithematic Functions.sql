# MYSQL
# Arithmetic Function

#Addition
SELECT 95+45;

# Substraction
SELECT 80-60;

# Multiply
Select 4*4;

# Division
Select 20/3;

# Modulous
Select 40%4;
Select MOD(20,3);

# Floors and Ceil
Select Floor(24.6);
Select Ceil(24.5);

#Round 
Select Round(24.6);
Select Round(24.2);
Select Round(56.67,1); 

# Random (Rand)
Select Rand();
Select Round(Rand()*100);


Select Round(20+Rand()*100);
Select Round(1000+Rand()*1000);  

#ABS-Absolute
Select ABS(-10); 

#Power 
Select Pow(5,6);

#SQRT square root
Select sqrt(144);





#Categorical Functions

#Upper
Select Upper("aryan");

#ucase
select ucase("aryan");

#Lower
Select Lower("ARYAN");

#lcase
select Lcase("ARYAN");

#Right and Left
Select Left("Aryan",3);
Select Right("Aryan",3);

#Instr and Substr
Select Instr("Aryan","y");

Select Substr("Priyanka",2,4);

#Concatination
Select Concat("Aryan"," ","Monga");

# concat_ws "With sepreator"
Select Concat_WS("---->","Aryan","Sam","Robin");

#Length
Select Length("Aryan");
Select Character_Length("Aryan");
Select Char_Length("Aryan");

#Trim
Select Trim("     Madrid      ");

#Replace
Select Replace("Vasooli Bhai","Bhai","Bhen");

#Reverse
Select Reverse("Aryan");
select instr(right("VIVEK",4),"V")+INSTR("VIVEK","V");

Select concat(substr("00000 catch uuuuuuuu me",7,5)," ",substr("00000 catch uuuuuuuu me",22,2)); 


# DATE FUNCTIONS:

#CURRENT DATE & TIME
Select Now();
Select sysdate();

#current date
select curdate(); 
select current_date();
select Day(curdate()); 
select Dayname(curdate()); 
select Month(curdate()); 
select Monthname(curdate()); 
select Quarter(curdate()); 
select Week(curdate()); 


