# importing necessary Files for api call.
import requests

# defining main function to check if the address is valid. 
def validate_address(address):
    
    # Extracting the PIN code from the address by spliting and then taking the last value.
    pin_code = address.split()[-1]

    # Making an API call by request to postalpincode.in for the data.
    api_url = f"http://postalpincode.in/api/pincode/{pin_code}"
    response = requests.get(api_url)

    # checking if the response is succefull by checking the status code.
    if response.status_code == 200:
        
        # converting the data in json format for readability.
        data = response.json()

        # print statement is just for testing that the response is correct or not.
        print(data)

        # checking if the status is success otherwise directly returning false as the address is incorrect.
        if data["Status"] == "Success":
                
                # if the status is success than.
                # Checking if the PIN code corresponds to the address.
                if len(data["PostOffice"]) > 1 and data["PostOffice"][1]["Name"] in address:
                    return True
                elif data["PostOffice"][0]["Name"] in address:
                     return True
    return False


# Test Cases for checking the consistancy of the code and its working correctly
test_cases = [
    "2nd Phase, 374/B, 80 Feet Rd, Mysore Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560050",
    "2nd Phase, 374/B, 80 Feet Rd, Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560050",
    "374/B, 80 Feet Rd, State Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bangalore. 560050",
    "2nd Phase, 374/B, 80 Feet Rd, Mysore Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560095",
    "Colony, Bengaluru, Karnataka 560050"
]

for address in test_cases:
    print(validate_address(address))