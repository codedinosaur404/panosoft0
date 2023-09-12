Data Modeling and Design

We would like you to author the types for two models of a Person along with the types of function signatures that take one Person model to the next.
Editing: When editing a person various fields may be in an incomplete or invalid state.
Validated and Fully Formed: This model will be consumed by the rest of the application and should make impossible states unrepresentable, act as proof that the model has passed certain validations, and assist users of the model by preventing structural mistakes, enforcing semantics, and simplifying use.  

For this exercise we will limit the fields we model to
First Name 
Last Name
Social Security Number
Marital Status
US Phone Number

Consider data integrity, usage ergonomics, transparency of the Api, and any other quality measures you generally value. You should design the validated Person based upon your own personal experience. 

Artifacts of this exercise
Type signatures for both the editable and the validated version of a Person.
Function signature(s) that take an editable version of a Person to a validated Person. Do not worry about implementing! If there are any validations that cannot be represented in types then please do include a few code comments discussing those. 
Briefly describe the Module organization for these types and what you will expose and what you will hide. Be ready to discuss how this impacts total system maintainability during a code review.