VAR skillCount = 0
VAR minSkill = 2
VAR maxSkill = 3

VAR hunter = false
VAR paranoid = false
VAR sales = false
VAR christian = false

=== Carton ===
*[read first letter]
    A letter from the elderly care facility your father lived in informing you of his recent passing. The box contains keepsakes he seemed to hold especially dear, please pick out what's yours and send on the rest.
    ->Carton
*[read second letter]
    “Daryl,
        Everything I did, I did for you. There isn’t much time left. Nobody knows.
        39°35'18.3"N 104°27'42.7"W
        
        Harold”
    ->Carton
+{skillCount==0}[open carton]
    Character creation, you are what you keep.
    ->Contents
+ [leave]
    {skillCount != 0: 
        You put the carton aside.
    - else:
        Your knee cracks as you rise from your hunched examination.
    }
    ->Bedroom

= Contents
SkillCount is {skillCount}
{hunter: You are a Hunter.}
{paranoid: You are Paranoid}
{sales: You are a Salesman}
{christian: You are a Christian}
+ Deer Antler
    Sharp eyes and sharper instincts. It's hunt or be hunted.
    ++{not hunter}[keep]
        ~ hunter = true
        ~ skillCount += 1
        ->Contents
    ++[put back]
        {hunter: 
            ~ skillCount -= 1
        }
        ~ hunter = false
        ->Contents
+ Spyglass
    Is it paranoid to be suspicious of a world so full of people out only for themselves? Recognize threats early, real or imagined.
    ++{not paranoid}[keep]
        ~ paranoid = true
        ~ skillCount += 1
        ->Contents
    ++[put back]
        {paranoid: 
            ~ skillCount -= 1
        }
        ~ paranoid = false
        ->Contents
+ Business Card
    Look at that subtle off-white coloring. The tasteful thickness of it. Oh, my God. It even has a watermark. Convince, barter, sell things-including yourself.
    ++{not sales}[keep]
        ~ sales = true
        ~ skillCount += 1
        ->Contents
    ++[put back]
        {sales: 
            ~ skillCount -= 1
        }
        ~ sales = false
        ->Contents
+ Worn Pocket Bible
    The good book is your friend. Good listener, better speaker.
    ++{not christian}[keep]
        ~ christian = true
        ~ skillCount += 1
        ->Contents
    ++[put back]
        {christian: 
            ~ skillCount -= 1
        }
        ~ christian = false
        ->Contents
+ [close carton]
    { skillCount < minSkill:
        I should get this over with now.
        ->Contents
        - else:
        { skillCount > maxSkill:
            I should keep only the most important things.
            ->Contents
            - else:
                Are you sure?
                +[yes]
                    ->Carton
                +[no]
                    ->Contents
        }
    }
    
    
    