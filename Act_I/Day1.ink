VAR dressed = false
VAR brushedTeeth = false
VAR interruptedApril = false
VAR listenedApril = false

=== Start ===
You start, as if from a nightmare but quickly settle yourself. You sit up at the edge of the bed, hunched forward, your face buried in your hands before they slide down, folding below your chin.

*[Get up]
You stand and look around.
The rooms decor is rugged yet modern and orderly almost to a fault. Everything has it's own little place and was put there with care. Pictures of you with your girls and wife adorn the walls. A large bookshelf stands in the corner and a smaller one by the bedside opposite of you. A CARTON BOX sits before the door to the hall. A stack of neatly FOLDED CLOTHES-already picked out for the day-on a chair in the corner.
-> Bedroom

=== Bedroom ===
+ {not dressed}[clothes on the chair]
    A stack of neatly folded clothes greets you.
    **[get dressed]
        You put on the white Tee, flanel shirt and worn jeans.
        ~ dressed = true
        ->Bedroom
    **[leave]
        ~ dressed = false
        ->Bedroom
+[cardboard box]
    A moving carton. "S-Cargo" in large, friendly letters on the side. Two letters on top, one addressed to your house, the other only to your name.
    ->Carton
    
->Bedroom
+[bathroom door]
    You enter the bathroom.
    ->Bathroom
->Bedroom
+[hallway]
{skillCount==0:
    As you walk toward the door, you stub your toe on the carton.
    ++[yell at the carton]
        The carton looks unimpressed.
        ->Bedroom
    ++[hold it in]
        You take a deep breath.
        ->Bedroom
  - else:
    ->Hallway
}


= Bathroom
*[wash your face]
    You let the water run for a while, stemming your arms onto the corners of the basin, looking into the mirror. You cup your hands and douse your face in coold, fresh water.
    ->Bathroom
*[brush your teeth]
    ~ brushedTeeth = true
    You groggily watch your reflection fillate the toothbrush.
    ->Bathroom
* {not dressed}[take a shower]
    You take a brisk shower, but the shock doesn't wash off easy.
    ->Bathroom
+ [return to bedroom]
    You leave the bathroom.
    ->Bedroom


=== Hallway ===
You are now in the Hallway. The door to APRIL's room is ajar, sunlight falling through the crack. {not interruptedApril: With it the gentle strumming of her guitar.} The sizzling of batter on butter from the kitchen downstairs. JUNE's room just behind the stairway.
+ [go to bedroom]
    You return to your bedroom.
    ->Bedroom
+ [go to April's room]
    {not interruptedApril:
        # IMAGE: Assets/Images/Act1/Moss_Guitar.jpg
        The room is bathed in warm sunlight filtered through the red of a bedsheet draped across the open window framed by potted plants. A cool summer breze makes it dance to the melodies produced by the guitar in the hands of the red haired young girl sitting on her Bed. Her phone propped up before her. When she notices you, she glances up with a shy smile. Without interruption her playing continues.
    - else:
        You enter April's room.
    }
    ->AprilsRoom
    

=== AprilsRoom ===

* {not interruptedApril} [just listen]
    You stand in the doorframe for some time. After a while, she lets the last note of her guitar ring out and silence falls over the room like a blanket, leaving the space to the rustling of the leaves and occasional chirping of a bird from outside the window. April sinks into herself for a moment, then leans forward and stops the recoring on her phone. She turns to you with a sleepy smile, wishing you a good morning.
    ~ listenedApril = true
    ->AprilsRoom
* ask her what she is playing
    { not listenedApril: ->Interrupted }
    "It's nothing in particular."
    ->AprilsRoom
* complement her playing
    { not listenedApril: ->Interrupted }
    "Thank you."
    ->AprilsRoom
* ask what's for breakfast
    { not listenedApril: ->Interrupted }
    "How should I know?"
    "Smells like pancakes to me."
    ->AprilsRoom
    
+ [leave]
    You return to the Hallway.
    ->Hallway

= Interrupted
    ~ interruptedApril = true
    As you begin to speak she glares at you, putting her palm to the strings. she picks up the phone, turns it off and tosses it on her bed. 
    "Dad, I was recording that..."
    "what do you want?"
    ->AprilsRoom









