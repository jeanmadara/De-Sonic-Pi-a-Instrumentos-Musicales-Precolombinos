###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. Ritmo San juanito metronomo 4/4

# Establece el tempo y el volumen de la percusión
use_bpm 85
# Define un patrón de San juanito
live_loop :percusion do
  with_fx :reverb, room: 0.7, mix: 0.1 do
    2.times do
      sample :drum_bass_soft
      sleep 1
    end
    2.times do
      sample :drum_bass_soft
      sleep 0.5
    end
    sample :drum_bass_soft
    sleep 1
  end
end



