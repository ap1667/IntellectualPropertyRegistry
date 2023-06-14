# IntellectualPropertyRegistry

The IntellectualPropertyRegistry contract allows users to register intellectual properties by providing a name and description.
Each registered property is assigned a unique ID, and the registry keeps track of the owner's address, name, description, and the registration timestamp.

The registerProperty function allows users to register a new property by providing the name and description as parameters.
It increments the propertyCount and adds the new property to the registry mapping.

The getProperty function allows users to retrieve the details of a registered property by providing its ID as a parameter.
It performs a check to ensure the provided ID is valid and then returns the owner's address, name, description, and timestamp of the property.
