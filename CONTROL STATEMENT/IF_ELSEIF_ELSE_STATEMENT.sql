
DELIMITER &&
CREATE PROCEDURE myFunction(original_rate NUMERIC(6, 2), OUT discount_rate NUMERIC(6, 2))
		NO SQL
			BEGIN
            IF(original_rate > 500) THEN
				SET discount_rate = original_rate * .5;
            ELSEIF(original_rate <= 500 AND original_rate > 250) THEN
				SET discount_rate = original_rate * .8;
			ELSE 
				SET discount_rate = original_rate;
			END IF;
            SELECT discount_rate;
		END&&
DELIMITER ;

SET @R = 150;
SET @DR = 150;

CALL myFunction(@R, @DR);