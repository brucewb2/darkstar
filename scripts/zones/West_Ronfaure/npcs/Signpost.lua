-----------------------------------
--  Area: West Ronfaure
--  NPC:  Signpost
--  @zone 100
-----------------------------------
package.loaded["scripts/zones/West_Ronfaure/MobIDs"] = nil;
-----------------------------------
require("scripts/zones/West_Sarutabaruta/MobIDs");

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local offset = npc:getID() - SIGNPOST_OFFSET;
    if (offset == 4) then
        player:startEvent(115);
    elseif (offset >=0 and offset <= 3) then
        player:startEvent(107 + offset);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
