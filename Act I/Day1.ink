=== Start ===
{location == "bedroom":
    This is written if yourVariable is true.
  - else:
    Otherwise this is written.
}

# AUDIOLOOP: audio/The_Path.mp3
# BACKGROUND: img/act1/bedroom.jpg
# LOADAREAS: bedroom
He starts, as if woken from a nightmare. He hunches over, buries his face in his hands, wipes down his face and clasps them together below his chin. After collecting himself for a moment, he stands up.
+ Go to...
    -> Navigation

-> END

=== Navigation ===
+ { location == "bedroom" } [Attic]
~ location = "attic"
->DONE
+ { location == "bedroom" } [Corridor]
~ location = "corridor"
->DONE
+ { location == "attic" } [Bedroom]
~ location = "bedroom"
->DONE
+ { location == "corridor" } [Bedroom]
~ location = "bedroom"
->DONE
+ { location == "corridor" } [April's Room]
~ location = "aprilsroom"
->DONE
+ { location == "corridor" } [Downstairs]
~ location = "downstairs"
->DONE
{location == "attic":
    This is written if yourVariable is true.
  - else:
    Otherwise this is written.
}
-> END