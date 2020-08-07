f1::

while (!found)
{
	 ; Looks for the first Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Easy.png
	if (ErrorLevel = 2)
		MsgBox Could not conduct search 1.
	else if (ErrorLevel = 1) 
	{
		Goto, Skip
	}
	else
		Mod1 := true

	 ; Looks for the second Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Medium.png
	if (ErrorLevel = 2)
		MsgBox Could not conduct search 2.
	else if (ErrorLevel = 1) 
	{
		Goto, Skip
	}
	else
		Mod2 := true

	 ; Looks for the third Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Hard.png
	if (ErrorLevel = 2)
		MsgBox Could not conduct search 3.
	else if (ErrorLevel = 1) 
	{
		 Goto, Skip
	}
	else
		Mod3 := true

	 ; Looks for the fourth Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\VeryHard.png
	if (ErrorLevel = 2)
		MsgBox Could not conduct search 4.
	else if (ErrorLevel = 1) 
	{
		Goto, Skip
	}
	else
		Mod4 := true

	Skip:

	if (Mod1 && Mod2 && Mod3 && Mod4 = true)
		found := true
	else
	{
		Mod1 := false
		Mod2 := false
		Mod3 := false
		Mod4 := false
		Send {Q}
		sleep 300
	}

}

f2::Pause ;

f3::Reload ;