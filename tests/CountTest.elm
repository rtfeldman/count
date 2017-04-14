module CountTest exposing (..)

import Test exposing (..)
import Fuzz exposing (..)
import Expect
import Count


type alias Layer2 =
    { field1 : Int
    , field2 : Int
    }


type alias Layer3 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    }


type alias Layer4 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    , field4 : Int
    }


type alias Layer5 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    , field4 : Int
    , field5 : Int
    }


type alias Layer6 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    , field4 : Int
    , field5 : Int
    , field6 : Int
    }


type alias Layer7 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    , field4 : Int
    , field5 : Int
    , field6 : Int
    , field7 : Int
    }


type alias Layer8 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    , field4 : Int
    , field5 : Int
    , field6 : Int
    , field7 : Int
    , field8 : Int
    }


type alias Layer9 =
    { field1 : Int
    , field2 : Int
    , field3 : Int
    , field4 : Int
    , field5 : Int
    , field6 : Int
    , field7 : Int
    , field8 : Int
    , field9 : Int
    }


basicCounting : Test
basicCounting =
    describe "Basic Counting"
        [ test "Count.to2" <|
            \() ->
                Count.to2 Layer2
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        }
        , test "Count.to3" <|
            \() ->
                Count.to3 Layer3
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        }
        , test "Count.to4" <|
            \() ->
                Count.to4 Layer4
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        , field4 = 4
                        }
        , test "Count.to5" <|
            \() ->
                Count.to5 Layer5
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        , field4 = 4
                        , field5 = 5
                        }
        , test "Count.to6" <|
            \() ->
                Count.to6 Layer6
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        , field4 = 4
                        , field5 = 5
                        , field6 = 6
                        }
        , test "Count.to7" <|
            \() ->
                Count.to7 Layer7
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        , field4 = 4
                        , field5 = 5
                        , field6 = 6
                        , field7 = 7
                        }
        , test "Count.to8" <|
            \() ->
                Count.to8 Layer8
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        , field4 = 4
                        , field5 = 5
                        , field6 = 6
                        , field7 = 7
                        , field8 = 8
                        }
        , test "Count.to9" <|
            \() ->
                Count.to9 Layer9
                    |> Expect.equal
                        { field1 = 1
                        , field2 = 2
                        , field3 = 3
                        , field4 = 4
                        , field5 = 5
                        , field6 = 6
                        , field7 = 7
                        , field8 = 8
                        , field9 = 9
                        }
        ]


advancedCounting : Test
advancedCounting =
    describe "Advanced Counting"
        [ fuzz int "Count.mapTo2" <|
            \coefficient ->
                Count.mapTo2 ((*) coefficient) Layer2
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        }
        , fuzz int "Count.mapTo3" <|
            \coefficient ->
                Count.mapTo3 ((*) coefficient) Layer3
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        }
        , fuzz int "Count.mapTo4" <|
            \coefficient ->
                Count.mapTo4 ((*) coefficient) Layer4
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        , field4 = 4 * coefficient
                        }
        , fuzz int "Count.mapTo5" <|
            \coefficient ->
                Count.mapTo5 ((*) coefficient) Layer5
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        , field4 = 4 * coefficient
                        , field5 = 5 * coefficient
                        }
        , fuzz int "Count.mapTo6" <|
            \coefficient ->
                Count.mapTo6 ((*) coefficient) Layer6
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        , field4 = 4 * coefficient
                        , field5 = 5 * coefficient
                        , field6 = 6 * coefficient
                        }
        , fuzz int "Count.mapTo7" <|
            \coefficient ->
                Count.mapTo7 ((*) coefficient) Layer7
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        , field4 = 4 * coefficient
                        , field5 = 5 * coefficient
                        , field6 = 6 * coefficient
                        , field7 = 7 * coefficient
                        }
        , fuzz int "Count.mapTo8" <|
            \coefficient ->
                Count.mapTo8 ((*) coefficient) Layer8
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        , field4 = 4 * coefficient
                        , field5 = 5 * coefficient
                        , field6 = 6 * coefficient
                        , field7 = 7 * coefficient
                        , field8 = 8 * coefficient
                        }
        , fuzz int "Count.mapTo9" <|
            \coefficient ->
                Count.mapTo9 ((*) coefficient) Layer9
                    |> Expect.equal
                        { field1 = 1 * coefficient
                        , field2 = 2 * coefficient
                        , field3 = 3 * coefficient
                        , field4 = 4 * coefficient
                        , field5 = 5 * coefficient
                        , field6 = 6 * coefficient
                        , field7 = 7 * coefficient
                        , field8 = 8 * coefficient
                        , field9 = 9 * coefficient
                        }
        ]
