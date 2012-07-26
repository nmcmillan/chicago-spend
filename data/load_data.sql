create table budget (
	id serial primary key,
	fund_type text,
	fund_code text,
	fund_description text,
	department_number text,
	department_description text,
	appropriation_authority text,
	appropriation_authority_description text,
	appropriation_account text,
	appropriation_account_description text,
	amount text
);

copy budget (fund_type, fund_code, fund_description, department_number, department_description, appropriation_authority, appropriation_authority_description, appropriation_account, appropriation_account_description, amount)
from '<path-to-project>/chicago-spend/data/Budget_-_2012_Appropriations.csv'
with delimiter as ',' csv header;