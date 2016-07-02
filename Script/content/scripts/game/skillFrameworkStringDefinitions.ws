function StringDefinitionToEnum( s : string ) : name
{
	switch(s)
	{
		// In geralt_skills.xml, you must set the "group_name" and "group_var" attributes.
		// These attributes should be named how they are named in your custom mod menu xml.
		// Make sure to provide all string-to-name conversions below.

		// Ex:
		// case "CustomSkillGroupID"	: return 'CustomSkillGroupID';		// group_name
		// case "customSkillEnabled"	: return 'customSkillEnabled';		// group_var

		case "ReflexBlast"		: return 'ReflexBlast';		// group_name
		case "refBlastEnabled"	: return 'refBlastEnabled';	// group_var for enable
		case "adrenCost"		: return 'adrenCost';		// arg_int_var1
		case "lvl2Boost"		: return 'lvl2Boost';		// arg_int_var2

		default					: return '';
	}
}