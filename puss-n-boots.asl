state("fceux")
{
	byte hpos:   	0x003B1388, 0x0000C0;
	byte map: 		0x003B1388, 0x000221;
	byte map2: 		0x003B1388, 0x000222;
}

// NESTOPIA untested
state("nestopia")
{
    	// base 0x0000 address of ROM : "nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x68;
	byte hpos: 		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0128; // 0xC0;
	byte map: 		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0289; // 0221;
	byte map2: 		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 028A; // 0222;
}
split
{
	// split on map screen for The Ocean
	if(current.hpos == 90 && old.hpos != 90 && current.map == 68 && current.map2 == 68)
	   return(true);
	// split on map screen for Arabia
	else if(current.hpos == 220 && old.hpos != 220 && current.map == 68 && current.map2 == 68)
	   return(true);
	// split on map screen for Space Wars
	else if(current.hpos == 204 && old.hpos != 204 && current.map == 68 && current.map2 == 68)
	   return(true);
	// split on map screen for London
	else if(current.hpos == 214 && old.hpos != 214 && current.map == 68 && current.map2 == 68)
	   return(true);
	// split on map screen for Liberty
	else if(current.hpos == 182 && old.hpos != 182 && current.map == 68 && current.map2 == 68)
	   return(true);
	// split on map screen for New York
	else if(current.hpos == 160 && old.hpos != 160 && current.map == 68 && current.map2 == 68)
	   return(true);
	// final split on victory screen
	else if(current.hpos == 128 && old.hpos != 128 && current.map == 170 && current.map2 == 170)
	   return(true);
	else
	   return(false);
}

start
{ 
    //start on map screen
	if(current.map == 68 && current.map2 == 68 && current.hpos == 128 && old.hpos != 128)
        return(true);
}

reset
{
    //split on map screen
	if(current.map == 68 && current.map2 == 68 && current.hpos == 86 && old.hpos == 0)
        return(true);
}

startup
{}