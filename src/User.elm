module User exposing (User, isValid)


type alias User =
    { id : Int
    , name : String
    , email : String
    }


isValid : User -> Bool
isValid user =
    String.length user.name > 0
