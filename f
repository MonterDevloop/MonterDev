		PerformHttpRequest("https://raw.githubusercontent.com/ALENTL/fivem_ip_version_lock/master/ips/ip_empresas.txt", function(err, database_ips, headers)
			local arr_ips = json.decode(database_ips)
			for k,v in pairs(arr_ips) do
				

					if arr_ips['version'] ~= version then
						if Config.lang == "br" then
							print("^2["..GetCurrentResourceName().."] Uma nova atualizacao esta disponivel, entre em contato comigo no Discord ALEN TL#5009^7")
						else
							print("^2["..GetCurrentResourceName().."] A new update is available, contact me on Discord ALEN TL#5009^7")
						end
					elseif arr_ips['version'] == version then
						print("^2["..GetCurrentResourceName().."] You are using the latest version of  from ALEN TL#5009")
					end
					return
			
			end
		
		end, "GET", "", {})
