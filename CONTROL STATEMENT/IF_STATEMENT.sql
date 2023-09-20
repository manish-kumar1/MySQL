
-- DELIMITER $$  
-- CREATE PROCEDURE myResult(original_rate NUMERIC(6,2),OUT discount_rate NUMERIC(6,2))  
--      NO SQL  
--       BEGIN  
--          IF (original_rate>200) THEN  
--             SET discount_rate=original_rate*.5;  
--          END IF;  
--          select discount_rate;  
--      END$$  
-- DELIMITER $$; 

--  set @p = 600;  
--  set @dp = 500; 
--  
--  call myResult(@p, @dp)  
 
 DROP procedure myResult; 
 
 -- IF-THEN-ELSEIF-ELSE Statement
 
DELIMITER $$  
CREATE PROCEDURE Result(original_rate NUMERIC(6,2),OUT discount_rate NUMERIC(6,2))  
     NO SQL  
      BEGIN  
         IF (original_rate>500) THEN  
            SET discount_rate=original_rate*.5;  
        ELSEIF (original_rate<=500 AND original_rate>250) THEN  
            SET discount_rate=original_rate*.8;  
        ELSE  
            SET discount_rate=original_rate;  
         END IF;  
         select discount_rate;  
     END$$  
DELIMITER ; 

set @p = 150;  
set @dp = 150; 

call Result(@p, @dp);