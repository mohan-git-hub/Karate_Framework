Feature: Rest API practice with REST API

Scenario: Verify API with Query parameters

	* def query = {gender:'male',status:'active'}
	Given url baseUrl + '/public/v1/users'
	And params query
	When method GET
	Then status 200
	* print response
	* def usercount = response.data.length
	* print usercount
	* match usercount == 20