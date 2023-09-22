CREATE PROCEDURE updateAddress(_customer_id INTEGER, _address VARCHAR(100))
AS $$
	BEGIN
		UPDATE customer
		SET address = _address
		WHERE customer_id = _customer_id;
		COMMIT;
	END
$$ LANGUAGE plpgsql;

CALL updateAddress(1, ('jimmypguitarman@zeplman.com')

SELECT * FROM customer

DROP FUNCTION addNewCustomer

CREATE OR REPLACE FUNCTION addNewCustomer(
	_customer_id INTEGER,
	_fisrt_name VARCHAR,
	_last_name VARCHAR,
	_address VARCHAR,
	_ticket_id INTEGER
) RETURNS INTEGER AS $$
	BEGIN 
		INSERT INTO customer(
			customer_id, 
			fisrt_name,
			last_name,
			address,
			ticket_id
		) VALUES (
			_customer_id, 
			_fisrt_name,
			_last_name,
			_address,
			_ticket_id
			);
		RETURN _customer_id;
	END
$$ LANGUAGE plpgsql;

SELECT addNewCustomer
	('5', 'John', 'Lennon', 'johnnyboyband@thebeetle.come', '1');
	('6', 'Paul', 'McCartney', 'PMbettle@thebettle.com','1');
	('7', 'George', 'Harrison', 'georgieboy@thebettle.com','1');
	('8', 'Ringo', 'Starr', 'ringorango@thebeetle.com', '1');


SELECT * FROM customer

