function BgAlerter_OnLoad(self)
	-- Register for Loading Variables
	self:RegisterEvent( "UPDATE_BATTLEFIELD_STATUS" );
end  

function BgAlerter_OnEvent( self, event, ... )
	if ( event == "UPDATE_BATTLEFIELD_STATUS" ) then
		for i=1, MAX_BATTLEFIELD_QUEUES do
			status, mapName, instanceID, minlevel, maxlevel, teamSize = GetBattlefieldStatus(i);
			if( status == "confirm" ) then
				PlaySoundFile("Interface\\AddOns\\BgAlerter\\alert.mp3");
			end
		end
	end
end