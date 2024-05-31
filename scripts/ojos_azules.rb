###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. Ojos Azules

use_bpm 80
use_synth_defaults attack: 0.25, release: 0.5, pan: rrand(-0.5, 0.5), cutoff: 50

live_loop :bombo do
  with_fx :wobble, mix: 0.5,room: 0.8  do
    3.times do
      sample :drum_bass_hard, amp: rrand(0.7,1)
      sleep 1
    end
    2.times do
      sample :drum_bass_hard, amp: rrand(0.9,1)
      sleep 0.5
    end
    sample :drum_bass_hard, amp: rrand(0.9,1)
    sleep 1
    #segunda parte
    4.times do
      sample :drum_bass_hard, amp: rrand(0.7,1)
      sleep 1
    end
    2.times do
      sample :drum_bass_hard, amp: rrand(0.9,1)
      sleep 0.5
    end
    sample :drum_bass_hard, amp: rrand(0.9,1)
    sleep 1
  end
end

live_loop :armonia do
  use_synth :tb303
  #use_synth_defaults cutoff: 80, res: 0.7, wave: 1, cutoff_attack: 2
  play chord(:A2, :major),release: 2
  sleep 2
  play chord(:c2, :major),release: 2
  sleep 2
  play chord(:c2, :major),release: 2
  sleep 2
  play chord(:c2, :major),release: 1
  sleep 1
  
  play chord(:E2, :major),release: 1
  sleep 1
  play chord(:E2, :major),release: 1
  sleep 1
  play chord(:A2, :minor),release: 2
  sleep 2
end

live_loop :melodia do
  sleep 11
  use_synth :mod_fm
  2.times do
    play_pattern_timed [:e4, :e4, :e4, :g4], [0.5, 0.5, 0.5, 0.5]
    play_pattern_timed [:e4, :d4, :e4, :c4], [1, 0.5, 0.5, 1]
    play_pattern_timed [:c4, :d4, :e4, :g4], [0.5, 0.5, 0.5, 0.5]
    play_pattern_timed [:d4, :b3, :c4, :a3], [1, 0.5, 0.5, 2]
  end
  #sleep 11
  1.times do
    play_pattern_timed [:c4, :c4, :c4, :a3], [0.5, 0.5, 0.5, 0.5]
    play_pattern_timed [:g3, :c4, :d4, :e4], [1, 0.5, 0.5, 1]
    play_pattern_timed [:c4, :d4, :e4, :g4], [0.5, 0.5, 0.5, 0.5]
    play_pattern_timed [:d4, :b3, :c4, :a3], [1, 0.5, 0.5, 2]
  end
  #sleep 11
end
