###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. Ritmo Danzante metronome 3/4

# Establece el tempo
use_bpm 100

# Define un patrón de percusión en compás 3/4
live_loop :bombo do
  2.times do
    sample :drum_bass_soft
    sleep 1
  end
  sleep 1
end

