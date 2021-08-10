local table = managers.ban_list:ban_list()
local i = 1

function bclean(table,i)
	if table[i] then 
		local iden = table[i].identifier
		managers.ban_list:unban(iden)
		i = i+1
		bclean(table,i)
	end
end

bclean(table,i)
