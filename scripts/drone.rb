###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. drone in Am

use_bpm 60  # Ajusta el BPM (tempo) según lo desees

live_loop :drone do
  use_synth :fm
  use_synth_defaults attack: 1, release: 4, depth: 1.5, divisor: 1.5
  
  #play :a2, amp: 0.5, sustain: 4
  play chord(:A2, :minor),amp: 0.5, sustain: 4
  sleep 4
  #play :a3, amp: 0.5, sustain: 4
  play chord(:A3, :minor),amp: 0.5, sustain: 4
  sleep 4
  #play :a3, amp: 0.5, sustain: 4
  play chord(:A3, :minor),amp: 0.5, sustain: 4
  sleep 4
end


live_loop :percussion do
  sample :drum_cymbal_soft, amp: 0.2, rate: 0.5
  sleep 16
end