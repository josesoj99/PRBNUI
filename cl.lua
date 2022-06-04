local activoNUI = false

RegisterCommand("ActivarNui", function()
    activoNUI = not activoNUI
    if activoNUI then
        SetNuiFocus(true, true)
        SendNUIMessage({
            prueba = true
        })
    else
        SetNuiFocus(false)
        SendNUIMessage({
            prueba = false
        })
    end
end)

RegisterNUICallback("boton", function(data)
    print("Ok, capturado!!", data.prueba)
   
    end)