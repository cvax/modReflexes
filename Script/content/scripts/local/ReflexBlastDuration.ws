class CReflexBlastDuration extends CR4HudModuleBuffs
{
	var reflexBlastShown : bool; default reflexBlastShown = false;
	
	public function GetReflexBlastMaxDur() : float
	{
		var duration : float;
		
		if ( GetWitcherPlayer().isReflexBlastXmlAvailable )
			duration = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('ReflexBlast', 'sloMoDuration'));
		else
		{
			// If changing slo-mo duration (secs), remember to change on aardEntity.ws' sloMoDuration as well
			duration = 3;
		}

		return duration;
	}
	

	public function GetReflexBlastActive() : bool
	{
		return thePlayer.ReflexBlastActivated;
	}
	
	public function GetReflexBlastDur() : int
	{
		return (int)(GetReflexBlastMaxDur() - EngineTimeToFloat( theGame.GetEngineTime() - thePlayer.ReflexBlastStartTime ));
	}
	
	public function GetReflexBlastDurFloat() : float
	{
		return (float)(GetReflexBlastMaxDur() - EngineTimeToFloat( theGame.GetEngineTime() - thePlayer.ReflexBlastStartTime ));
	}
	

	public function ShowReflexBlast(bDisplayBuffs : bool, m_fxSetPercentSFF : CScriptedFlashFunction, i : int, offset : int) : int
	{

		if (bDisplayBuffs && GetEnabled())
		{		
			if (GetReflexBlastActive() == true && reflexBlastShown == false)
			{
				reflexBlastShown = true;
				return 1;
			}
			else if (GetReflexBlastActive() == true && reflexBlastShown == true)
			{
				m_fxSetPercentSFF.InvokeSelfThreeArgs( FlashArgNumber(i-offset),FlashArgNumber( GetReflexBlastMaxDur() /*GetReflexBlastDurFloat()*/ ), FlashArgNumber( GetReflexBlastMaxDur() ) );
				return 0;
			}
			else if (GetReflexBlastActive() == false && reflexBlastShown == true)
			{
				reflexBlastShown = false;
				return 1;
			}
		}
		
		return 2;
		
	}

	
	public function DrawReflexBlast(l_flashObject : CScriptedFlashObject, l_flashArray : CScriptedFlashArray, m_flashValueStorage : CScriptedFlashValueStorage)
	{
		if (GetReflexBlastActive() == true)
		{
			l_flashObject = m_flashValueStorage.CreateTempFlashObject();
			l_flashObject.SetMemberFlashBool("isVisible", true);
			l_flashObject.SetMemberFlashString("iconName", "hud/radialmenu/mcreflexblast.png");
			l_flashObject.SetMemberFlashString("title", "Reflex Blast");
			l_flashObject.SetMemberFlashBool("isPositive", true);
			l_flashObject.SetMemberFlashNumber("duration", GetReflexBlastDur());
			l_flashObject.SetMemberFlashNumber("initialDuration", GetReflexBlastMaxDur());
			l_flashArray.PushBackFlashObject(l_flashObject);	
		}
	}

}