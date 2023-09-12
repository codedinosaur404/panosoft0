module EditablePerson exposing (EditablePerson, emptyPerson, setPersonFormField, PersonFormField(..))


type PersonFormField
    = FirstNameField
    | LastNameField
    | SSNField
    | MaritalStatusField
    | PhoneNumberField


type alias EditablePerson =
    { firstName : String
    , lastName : String
    , socialSecurityNumber : String
    , maritalStatus : String
    , phoneNumber : String
    }

emptyPerson : EditablePerson
emptyPerson =
    { firstName = ""
    , lastName = ""
    , socialSecurityNumber = ""
    , maritalStatus = ""
    , phoneNumber = ""
    }


setPersonFormField : PersonFormField -> String -> EditablePerson -> EditablePerson
