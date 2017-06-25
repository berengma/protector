
local xmin = -3617
local xmax = -2695
local zmin = 2871
local zmax = 4154

minetest.register_privilege("doityourself","can place protector stones everywhere")

function protector_check_pos(user)
       local rvar = true
       local uname = user:get_player_name()
       local wpos = user:getpos()
       local wprivs = minetest.get_player_privs(uname)
       
	    
	      if ((wpos.x > xmin) and (wpos.x < xmax) and (wpos.z > zmin) and (wpos.z < zmax)) or wprivs.doityourself then
		return rvar

	      else
		
		rvar = false
		minetest.chat_send_player(uname,"Protectorblocks only in build area, ask Gundul for protection")
		return rvar
	      end
       
end
