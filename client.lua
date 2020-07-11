local custommodels = 
{
	"fulux63",
	"civicek9rb",
        "maj350",
        "rx7veilside",
        "rx7tunable",
        "fk8",
        "fd2",
      	"ageraone",
        "ae86",
	"surfer2",
} -- Add models that need to be loaded before player spawns

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	for i = 1, #custommodels, 1 do
		RequestModel(GetHashKey(i))  --If your table already contains hashes remove GetHashKey and just RequestModel(i)
		 print("optimizing -jgabt")
	end
	Citizen.Wait(0)
        print("Vehicles Optimized! -jgabt")
end)