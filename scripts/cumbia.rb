###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. Cumbia

use_bpm 160
live_loop :bajo do
  
  use_synth :fm
  use_synth_defaults cutoff: 80, res: 0.7, wave: 0, cutoff_attack: 2
  play note :A2
  sleep 4
  play note :D2
  sleep 2
  play note :E2
  sleep 2
end
live_loop :bass do
  stop
  use_synth :fm  # Selecciona el sintetizador fm
  use_synth_defaults attack: 1, release: 4, depth: 2, divisor: 1.5  # Configura los parámetros por defecto del sintetizador fm
  play_chord chord(:A1, :minor).take(2), amp: 0.5, sustain: 8  # Toca las dos primeras notas del acorde de La menor (A1 y E2) con sustain de 8 segundos
  sleep 8  # Pausa de 8 segundos antes de repetir el loop
end
live_loop :llamador do
  
  
  3.times do
    sample :drum_tom_mid_soft, amp: rrand(0.3,0.5)
    sleep 1
    sample :drum_tom_mid_hard, amp: rrand(0.6,0.7)
    sleep 1
  end
  2.times do
    sample :drum_tom_mid_soft, amp: rrand(0.3,0.5)
    sleep 0.5
  end
  sample :drum_tom_mid_hard, amp: rrand(0.6,0.7)
  sleep 1
  
  
end

live_loop :bombo do
  #sync :bajo
  
  3.times do
    sample :drum_cymbal_closed, amp: rrand(0.6,0.8)
    sleep 1
    2.times do
      sample :drum_cymbal_closed, amp: rrand(0.6,0.8)
      sleep 0.5
    end
  end
  #sample :drum_bass_hard, amp: rrand(0.4,0.8)
  sleep 1
  sample :drum_bass_hard, amp: rrand(0.4,0.8)
  sleep 1
end
live_loop :contra do
  
  4.times do
    sleep 1
    sample :drum_cymbal_pedal, amp: rrand(0.6,0.8)
    sleep 1
  end
end
live_loop :repique do
  
  sleep 29
  sample :drum_tom_mid_hard, amp: rrand(0.6,0.7)
  sleep 1
  sample :drum_tom_mid_soft, amp: rrand(0.6,0.7)
  sleep 0.5
  sample :drum_tom_mid_soft, amp: rrand(0.6,0.7)
  sleep 0.5
  sample :drum_tom_mid_hard, amp: rrand(0.6,0.7)
  sleep 0.5
  sample  :drum_tom_mid_hard, amp: rrand(0.6,0.7)
  sleep 0.5
end

live_loop :melodiab do
  stop
  use_synth :fm  # Puedes cambiar el sintetizador a tu preferencia
  
  with_fx :reverb, room: 0.8, mix: 0.6 do
    with_fx :echo, phase: 0.25, decay: 2 do
      # Tocar cada nota de la escala de La menor con una pausa de 0.5 segundos entre ellas
      play_pattern_timed scale(:A3, :minor_pentatonic, num_octaves: 1).reverse,
        1, release: 0.1
      sleep 2
      sleep 8
    end
  end
end