module ValidatedPerson exposing (ValidatedPerson, fromEditable, toEditable)

type FirstName
    = FirstName String

type LastName
    = LastName String

type MaritalStatus
    = Single
    | Married
    | Divorced
    | Separated
    | Widowed

type alias ValidatedPerson =
    { firstName : FirstName
    , lastName : LastName
    , socialSecurityNumber : String
    , maritalStatus : MaritalStatus
    , phoneNumber : String
    }

toEditable : ValidatedPerson -> EditablePerson
fromEditable : EditablePerson -> Result (List Error) ValidatedPerson


{--person formatters 
fullName : FirstName -> LastName -> String
formatPhoneNumber : String -> String
formatSocialSecurityNumber : String -> String
martialStatusToString : MaritalStatus -> String
--}


type alias Error =
    ( PersonFormField, String )

{--subvalidators --}
validateFirstName : (subject -> String) -> error -> Validator error subject
validateLastName : (subject -> String) -> error -> Validator error subject
validateSSN : (subject -> String) -> error -> Validator error subject
validatePhoneNumber : (subject -> String) -> error -> Validator error subject
validateMaritalStatus : (subject -> String) -> error -> Validator error subject

getDigits : String -> String
isInPhoneDigitRange : String -> Bool



-- In Validator Library

all : List (Validator error subject) -> Validator error subject
firstError : List (Validator error subject) -> Validator error subject
validate : Validator error subject -> subject -> Result (List error) (Valid subject)
ifBlank : (subject -> String) -> error -> Validator error subject

type Validator error subject
    = Validator (subject -> List error)
