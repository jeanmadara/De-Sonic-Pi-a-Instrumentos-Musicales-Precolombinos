###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. Vasija de Barro

# Establece el tempo
use_bpm 90

# Define un ritmo en 3/4 con bombo en los dos primeros tiempos
live_loop :ritmo_3_4 do
  sample :drum_bass_soft
  sleep 1
  sample :drum_bass_soft
  sleep 1
  sleep 1 # Silencio en el tercer tiempo
end

# Define la progresión de acordes de acompañamiento original
acordes_acompanamiento = [chord(:E3, :minor), chord(:E3, :minor), chord(:E3, :minor),
                          chord(:G3, :major), chord(:B3, :dom7), chord(:E3, :minor), chord(:E3, :minor)]

# Define la nueva progresión de acordes de acompañamiento
acordes_acompanamiento2 = [chord(:G3, :major), chord(:D3, :major), chord(:G3, :major), chord(:B3, :dom7),
                           chord(:B3, :dom7), chord(:E3, :minor), chord(:E3, :minor)]

# Reproduce las dos progresiones de acordes secuencialmente
live_loop :acompanamiento do
  2.times do
    acordes_acompanamiento.each do |acorde|
      use_synth :pluck
      play acorde, release: 3, amp: 0.5,
        pan: rrand(-1, 1), attack: 0.1, decay: 0.3, sustain: 0.5, cutoff: 80
      sleep 3 # Cada acorde dura 3 tiempos (compás 3/4)
    end
  end
  
  2.times do
    acordes_acompanamiento2.each do |acorde|
      use_synth :tb303
      play acorde, release: 3, amp: 0.5,
        pan: rrand(-1, 1), attack: 0.1, decay: 0.3, sustain: 0.5, cutoff: 80
      sleep 3 # Cada acorde dura 3 tiempos (compás 3/4)
    end
  end
end# Welcome to Sonic Pi

