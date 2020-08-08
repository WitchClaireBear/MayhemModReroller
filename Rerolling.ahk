f1::

while (!found)
{
	 ; Looks for the first Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Mod1.png
	if (ErrorLevel != 1)
		Mod1 := true
	else 
		Goto, Skip

	 ; Looks for the second Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Mod2.png
	if (ErrorLevel != 1)
		Mod2 := true
	else 
		Goto, Skip

	 ; Looks for the third Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Mod3.png
	if (ErrorLevel != 1)
		Mod3 := true
	else 
		Goto, Skip

	 ; Looks for the fourth Mayhem Mod
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *30 %A_ScriptDir%\Mod4.png
	if (ErrorLevel != 1)
		Mod4 := true
	else 
		Goto, Skip

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