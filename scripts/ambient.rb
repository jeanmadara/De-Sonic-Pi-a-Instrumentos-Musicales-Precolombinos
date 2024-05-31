###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. sonido ambiental

use_bpm 60  # Ajusta el BPM según tus preferencias

# Loop para la capa de fondo armónica con un sintetizador oscuro y ambiental
live_loop :pad do
  use_synth :dark_ambience  # Selecciona el sintetizador dark_ambience
  play_chord chord(:A2, :minor), amp: 0.5, sustain: 8, release: 4  # Toca un acorde de La menor (A minor) con sustain de 8 segundos y release de 4 segundos
  sleep 8  # Pausa de 8 segundos antes de repetir el loop
end

# Loop para una capa ambiental de fondo con acordes sostenidos
live_loop :background_ambience do
  use_synth :hollow  # Selecciona el sintetizador hollow
  play_chord chord(:A4, :minor), amp: 0.3, sustain: 16, attack: 4, release: 8  # Toca un acorde de La menor en una octava más alta con sustain de 16 segundos, attack de 4 segundos y release de 8 segundos
  sleep 16  # Pausa de 16 segundos antes de repetir el loop
end

# Loop para la línea de bajo, proporcionando una base armónica profunda
live_loop :bass do
  use_synth :fm  # Selecciona el sintetizador fm
  use_synth_defaults attack: 1, release: 4, depth: 2, divisor: 1.5  # Configura los parámetros por defecto del sintetizador fm
  play_chord chord(:A1, :minor).take(2), amp: 0.5, sustain: 8  # Toca las dos primeras notas del acorde de La menor (A1 y E2) con sustain de 8 segundos
  sleep 8  # Pausa de 8 segundos antes de repetir el loop
end

# Loop para un elemento rítmico suave con un platillo
live_loop :percussion do
  sample :drum_cymbal_soft, amp: 0.2, rate: 0.5  # Reproduce una muestra de platillo suave con amplificación reducida y una velocidad de reproducción más baja
  sleep 16  # Pausa de 16 segundos antes de repetir el loop
end

# Loop para un sonido ambiental de viento
live_loop :wind do
  sample :ambi_haunted_hum, amp: 0.4, rate: 0.5  # Reproduce una muestra de sonido ambiental simulando viento, con amplificación y velocidad ajustadas
  sleep sample_duration(:ambi_haunted_hum) / 2  # Pausa por la mitad de la duración de la muestra antes de repetir el loop
end
