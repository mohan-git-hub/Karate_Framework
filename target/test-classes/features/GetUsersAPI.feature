Feature: API Feature to get Users

Scenario: Get Details of Users

	Given url baseUrl + '/public/v1/users'
	And   path '5'
	When  method GET
	Then  status 200
	* print response
	* def Username = response.data.name
	* print "Name of the User is " + Username
	* match Username == "Sarla Verma"
	* match response.data.gender == "female"
	
Scenario: Verify Invalid User Response

	Given url baseUrl + '/public/v1/users'
	And   path '0'
	When  method GET
	Then  status 404