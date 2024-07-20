CreateThread(function()
	Wait(1000)
	while true do
		if IsPedArmed(PlayerPedId(), 6) then
			SetWeaponRecoilShakeAmplitude(GetSelectedPedWeapon(PlayerPedId()), 0)
			SetPedAccuracy(PlayerPedId(), 100)
		end
		Wait(1000)
	end
end)