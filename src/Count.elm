module Count exposing (mapTo2, mapTo3, mapTo4, mapTo5, mapTo6, mapTo7, mapTo8, mapTo9, to2, to3, to4, to5, to6, to7, to8, to9)

{-| Functions for counting upwards from 1, and passing those numbers to other functions.


## Basic Counting

@docs to2, to3, to4, to5, to6, to7, to8, to9


## Advanced Counting (Whoa. WHOA.)

@docs mapTo2, mapTo3, mapTo4, mapTo5, mapTo6, mapTo7, mapTo8, mapTo9


## Theoretical Counting

These functions are even more advanced than the Advanced Counting functions, if
you can believe it. They're so advanced, their implementations are purely
theoretical and therefore they have no APIs.

-}

-- Basic Counting --


{-| Count from 1 to 2, and pass each number to the given function.

    type alias Layers =
        { normal : Int
        , menu : Int
        }

    layers : Layers
    layers =
        -- { normal = 1
        -- , menu = 2
        -- }
        Count.to2 Layers

-}
to2 : (Int -> Int -> a) -> a
to2 fn =
    fn 1 2


{-| Count from 1 to 3, and pass each number to the given function.

    type alias Layers =
        { normal : Int
        , menu : Int
        , modal : Int
        }

    layers : Layers
    layers =
        -- { normal = 1
        -- , menu = 2
        -- , modal = 3
        -- }
        Count.to3 Layers

-}
to3 : (Int -> Int -> Int -> a) -> a
to3 fn =
    fn 1 2 3


{-| Count from 1 to 4, and pass each number to the given function.

    type alias Layers =
        { normal : Int
        , dropdown : Int
        , menu : Int
        , modal : Int
        }

    layers : Layers
    layers =
        -- { normal = 1
        -- , dropdown = 2
        -- , menu = 3
        -- , modal = 4
        -- }
        Count.to4 Layers

-}
to4 : (Int -> Int -> Int -> Int -> a) -> a
to4 fn =
    fn 1 2 3 4


{-| Count from 1 to 5, and pass each number to the given function.

    type alias Layers =
        { normal : Int
        , dropdown : Int
        , menu : Int
        , overlay : Int
        , modal : Int
        }

    layers : Layers
    layers =
        -- { normal = 1
        -- , dropdown = 2
        -- , menu = 3
        -- , overlay = 4
        -- , modal = 5
        -- }
        Count.to5 Layers

-}
to5 : (Int -> Int -> Int -> Int -> Int -> a) -> a
to5 fn =
    fn 1 2 3 4 5


{-| Count from 1 to 6, and pass each number to the given function.

    type alias Layers =
        { normal : Int
        , dropdown : Int
        , menu : Int
        , overlay : Int
        , modal : Int
        , debugger : Int
        }

    layers : Layers
    layers =
        -- { normal = 1
        -- , dropdown = 2
        -- , menu = 3
        -- , overlay = 4
        -- , modal = 5
        -- , debugger = 6
        -- }
        Count.to6 Layers

-}
to6 : (Int -> Int -> Int -> Int -> Int -> Int -> a) -> a
to6 fn =
    fn 1 2 3 4 5 6


{-| Count from 1 to 7, and pass each number to the given function.

    type alias Layers =
        { basement : Int
        , normal : Int
        , dropdown : Int
        , menu : Int
        , overlay : Int
        , modal : Int
        , debugger : Int
        }

    layers : Layers
    layers =
        -- { basement = 1
        -- , normal = 2
        -- , dropdown = 3
        -- , menu = 4
        -- , overlay = 5
        -- , modal = 6
        -- , debugger = 7
        -- }
        Count.to7 Layers

-}
to7 : (Int -> Int -> Int -> Int -> Int -> Int -> Int -> a) -> a
to7 fn =
    fn 1 2 3 4 5 6 7


{-| Count from 1 to 8, and pass each number to the given function.

    type alias Layers =
        { subBasement : Int
        , basement : Int
        , normal : Int
        , dropdown : Int
        , menu : Int
        , overlay : Int
        , modal : Int
        , debugger : Int
        }

    layers : Layers
    layers =
        -- { subBasement = 1
        -- , basement = 2
        -- , normal = 3
        -- , dropdown = 4
        -- , menu = 5
        -- , overlay = 6
        -- , modal = 7
        -- , debugger = 8
        -- }
        Count.to8 Layers

-}
to8 : (Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> a) -> a
to8 fn =
    fn 1 2 3 4 5 6 7 8


{-| Count from 1 to 9, and pass each number to the given function.

    type alias Layers =
        { beneathTheBrowserItself : Int
        , subBasement : Int
        , basement : Int
        , normal : Int
        , dropdown : Int
        , menu : Int
        , overlay : Int
        , modal : Int
        , debugger : Int
        }

    layers : Layers
    layers =
        -- { beneathTheBrowserItself = 1
        -- , subBasement = 2
        -- , basement = 3
        -- , normal = 4
        -- , dropdown = 5
        -- , menu = 6
        -- , overlay = 7
        -- , modal = 8
        -- , debugger = 9
        -- }
        Count.to9 Layers

-}
to9 : (Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> a) -> a
to9 fn =
    fn 1 2 3 4 5 6 7 8 9



-- Advanced Counting --


{-| Count from 1 to 2, applying a transformation to both numbers, and pass each number to the given function.

    type alias Layers =
        { normal : String
        , menu : String
        }

    layers : Layers
    layers =
        -- { normal = "zero_indexed_0"
        -- , menu = "zero_indexed_1"
        -- }
        Count.mapTo2 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo2 : (Int -> a) -> (a -> a -> b) -> b
mapTo2 transform fn =
    fn (transform 1) (transform 2)


{-| Count from 1 to 3, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { normal : String
        , menu : String
        , modal : String
        }

    layers : Layers
    layers =
        -- { normal = "zero_indexed_0"
        -- , menu = "zero_indexed_1"
        -- , modal = "zero_indexed_2"
        -- }
        Count.mapTo3 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo3 : (Int -> a) -> (a -> a -> a -> b) -> b
mapTo3 transform fn =
    fn (transform 1) (transform 2) (transform 3)


{-| Count from 1 to 4, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { normal : String
        , menu : String
        , overlay : String
        , modal : String
        }

    layers : Layers
    layers =
        -- { normal = "zero_indexed_0"
        -- , menu = "zero_indexed_1"
        -- , overlay = "zero_indexed_2"
        -- , modal = "zero_indexed_3"
        -- }
        Count.mapTo4 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo4 : (Int -> a) -> (a -> a -> a -> a -> b) -> b
mapTo4 transform fn =
    fn (transform 1) (transform 2) (transform 3) (transform 4)


{-| Count from 1 to 5, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { normal : String
        , dropdown : String
        , menu : String
        , overlay : String
        , modal : String
        }

    layers : Layers
    layers =
        -- { normal = "zero_indexed_0"
        -- , dropdown = "zero_indexed_1"
        -- , menu = "zero_indexed_2"
        -- , overlay = "zero_indexed_3"
        -- , modal = "zero_indexed_4"
        -- }
        Count.mapTo5 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo5 : (Int -> a) -> (a -> a -> a -> a -> a -> b) -> b
mapTo5 transform fn =
    fn (transform 1) (transform 2) (transform 3) (transform 4) (transform 5)


{-| Count from 1 to 6, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { normal : String
        , dropdown : String
        , menu : String
        , overlay : String
        , modal : String
        , debugger : String
        }

    layers : Layers
    layers =
        -- { normal = "zero_indexed_0"
        -- , dropdown = "zero_indexed_1"
        -- , menu = "zero_indexed_2"
        -- , overlay = "zero_indexed_3"
        -- , modal = "zero_indexed_4"
        -- , debugger = "zero_indexed_5"
        -- }
        Count.mapTo6 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo6 : (Int -> a) -> (a -> a -> a -> a -> a -> a -> b) -> b
mapTo6 transform fn =
    fn (transform 1) (transform 2) (transform 3) (transform 4) (transform 5) (transform 6)


{-| Count from 1 to 7, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { basement : String
        , normal : String
        , dropdown : String
        , menu : String
        , overlay : String
        , modal : String
        , debugger : String
        }

    layers : Layers
    layers =
        -- { basement = "zero_indexed_0"
        -- , normal = "zero_indexed_1"
        -- , dropdown = "zero_indexed_2"
        -- , menu = "zero_indexed_3"
        -- , overlay = "zero_indexed_4"
        -- , modal = "zero_indexed_5"
        -- , debugger = "zero_indexed_6"
        -- }
        Count.mapTo7 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo7 : (Int -> a) -> (a -> a -> a -> a -> a -> a -> a -> b) -> b
mapTo7 transform fn =
    fn (transform 1) (transform 2) (transform 3) (transform 4) (transform 5) (transform 6) (transform 7)


{-| Count from 1 to 8, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { subBasement : String
        , basement : String
        , normal : String
        , dropdown : String
        , menu : String
        , overlay : String
        , modal : String
        , debugger : String
        }

    layers : Layers
    layers =
        -- { subBasement = "zero_indexed_0"
        -- , basement = "zero_indexed_1"
        -- , normal = "zero_indexed_2"
        -- , dropdown = "zero_indexed_3"
        -- , menu = "zero_indexed_4"
        -- , overlay = "zero_indexed_5"
        -- , modal = "zero_indexed_6"
        -- , debugger = "zero_indexed_7"
        -- }
        Count.mapTo8 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo8 : (Int -> a) -> (a -> a -> a -> a -> a -> a -> a -> a -> b) -> b
mapTo8 transform fn =
    fn (transform 1) (transform 2) (transform 3) (transform 4) (transform 5) (transform 6) (transform 7) (transform 8)


{-| Count from 1 to 9, applying a transformation to each number, and pass each number to the given function.

    type alias Layers =
        { beneathTheBrowserItself : String
        , subBasement : String
        , basement : String
        , normal : String
        , dropdown : String
        , menu : String
        , overlay : String
        , modal : String
        , debugger : String
        }

    layers : Layers
    layers =
        -- { beneathTheBrowserItself = "zero_indexed_0"
        -- , subBasement = "zero_indexed_1"
        -- , basement = "zero_indexed_2"
        -- , normal = "zero_indexed_3"
        -- , dropdown = "zero_indexed_4"
        -- , menu = "zero_indexed_5"
        -- , overlay = "zero_indexed_6"
        -- , modal = "zero_indexed_7"
        -- , debugger = "zero_indexed_8"
        -- }
        Count.mapTo9 (\num -> "zero_indexed_" ++ toString (num - 1)) Layers

-}
mapTo9 : (Int -> a) -> (a -> a -> a -> a -> a -> a -> a -> a -> a -> b) -> b
mapTo9 transform fn =
    fn (transform 1) (transform 2) (transform 3) (transform 4) (transform 5) (transform 6) (transform 7) (transform 8) (transform 9)
