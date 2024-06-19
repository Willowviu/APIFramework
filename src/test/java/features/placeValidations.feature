
Feature: Validating Place API's

@AddPlace @Regression 
 Scenario Outline: Verify if Place is being successfully added using AddPlace API	
    Given Add Place Payload with "<name>"	"<language>"	"<address>"
    When users calls "AddPlaceAPI" with "POST" http request
    Then the API call got success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP"
    And verify place_Id created maps to "<name>" using "getPlaceAPI"
    
    
Examples:
	|name		|	language	|	address						|
	|AAhouse|	English		|	World cross center|
#	|BBHouse|	Spanish		|	Sea cross center	|

@DeletePlace @Regression
	Scenario: Verify if Delete Place functionality is working
	
		Given DeletePlace Payload
		When users calls "deletePlaceAPI" with "POST" http request
		Then the API call got success with status code 200
		And "status" in response body is "OK"
		
		 
		 