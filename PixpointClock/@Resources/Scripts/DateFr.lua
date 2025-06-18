function Initialize()
    jours = {"Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"}
    mois = {"Janvier", "Février", "Mars", "Avril", "Mai", "Juin",
            "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"}
end

function Update()
    local time = os.date("*t")
    local jour = jours[time.wday]
    local moisNom = mois[time.month]
    local dateStr = string.format("%d %s %d", time.day, moisNom, time.year)
    return dateStr
end