DROP TABLE IF EXISTS mock_data;
DROP TABLE IF EXISTS mock2_data;

CREATE TABLE mock_data (
  id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	supermalt_drinkers VARCHAR(50),
	ikea_visits VARCHAR(50)
);

CREATE TABLE mock2_data (
  id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	employer VARCHAR(50),
	salary VARCHAR(50)
);

insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Ernesta', 'Davidovits', 'Often', 'Once');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Anne-corinne', 'Thundercliffe', 'Weekly', 'Monthly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Cherida', 'Lornsen', 'Weekly', 'Often');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Godfrey', 'Kroon', 'Often', 'Daily');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Geneva', 'Adao', 'Daily', 'Monthly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Kalle', 'Ludye', 'Daily', 'Seldom');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Fayth', 'Rojahn', 'Seldom', 'Often');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Neil', 'Petrillo', 'Once', 'Monthly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Aldo', 'Alpine', 'Yearly', 'Yearly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Minnie', 'Hannum', 'Monthly', 'Monthly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Malachi', 'Kayzer', 'Yearly', 'Once');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Astrix', 'Ramm', 'Never', 'Yearly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Bertie', 'Loader', 'Daily', 'Monthly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Sibeal', 'O''Gorman', 'Monthly', 'Once');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Judas', 'Vaines', 'Weekly', 'Often');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Gabby', 'Dignan', 'Daily', 'Weekly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Stafford', 'Luppitt', 'Never', 'Yearly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Blisse', 'Sheere', 'Seldom', 'Seldom');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Josephine', 'Mangion', 'Never', 'Yearly');
insert into MOCK_DATA (first_name, last_name, supermalt_drinkers, ikea_visits) values ('Glenine', 'Meggison', 'Daily', 'Seldom');

insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Marlo', 'Prujean', 'Eare', '£87168.97');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Joelie', 'Boig', 'Browsebug', '£82059.74');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Jolene', 'Shalliker', 'Linklinks', '£62513.43');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Inge', 'Rumming', 'Myworks', '£83282.53');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Christoffer', 'Cuberley', 'Twinte', '£36030.62');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Clare', 'Danton', 'Abatz', '£50368.09');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Dorrie', 'Fayerman', 'Youbridge', '£93081.70');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Wenonah', 'Rasor', 'Demimbu', '£54535.72');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Baryram', 'Jenik', 'Zooveo', '£64446.47');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Maitilde', 'Dietmar', 'Devpulse', '£98075.81');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Barth', 'Montague', 'Brightdog', '£36818.43');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Hi', 'Orneblow', 'Yamia', '£24395.30');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Blondelle', 'Skuse', 'Quatz', '£36444.78');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Peterus', 'Fogarty', 'Lazz', '£63203.44');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Rudolfo', 'Faulds', 'Edgeify', '£97599.62');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Town', 'Orum', 'Bubblemix', '£64496.53');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Sella', 'Peascod', 'Realbridge', '£69690.75');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Michell', 'Woollin', 'Skidoo', '£67414.44');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Selma', 'Bortoletti', 'Oyoba', '£79915.04');
insert into MOCK2_DATA (first_name, last_name, employer, salary) values ('Sampson', 'Rilings', 'Agimba', '£63323.17');
