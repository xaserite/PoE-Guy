class Item
{
	rarity := ""	; "N"ormal, "M"agic, "R"are, "U"nique
	affixes := []   ; array of affixes defining the item
	weightSum := 0	; total weight of affixes
	
	is(target)
	{
		this.weightSum := 0
		for taffix in target.affixes
		{
			i := 0 ; affix index
			for iaffix in this.affixes
			{
				i ++
				Pos = RegExMatch(iaffix.ID,taffix.I)
				; check whether affix is in target, if true:
				; remove affix and add the target weight to the total
				{ 
					this.weightSum += taffix.weight 
					this.affixes.RemoveAt(i)
					i -- 
				}
			}
		}
		return ( this.weightSum >= target.weightSum ) 
	}
}