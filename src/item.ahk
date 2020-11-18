class Item
{
	rarity := ""	; "normal", "magic", "rare", "unique"
	affixes := []   ; array of affixes defining the item
	weightSum := 0	; total weight of affixes
	
	is(target)
	{
		this.weightSum := 0
		for iaffix in this.affixes
		{
			for taffix in target.affixes
			{
				Pos = RegExMatch(iaffix.ID,taffix.I)
				; check whether affix is in target, if true:
				; remove affix and add the target weight to the total
				{ 
					this.weightSum += taffix.weight 
				}
			}
		}
		return ( this.weightSum >= target.weightSum ) 
	}
}