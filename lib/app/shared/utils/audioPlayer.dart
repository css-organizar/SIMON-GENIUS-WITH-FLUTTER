import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

AudioPlayerState geniusPlayerState;
final geniusPlayer = AudioCache();

Future<void> geniusPlaySound(int valor) {
  if (valor == 1) geniusPlayer.play('sounds/yellow.mp3');
  if (valor == 2) geniusPlayer.play('sounds/red.mp3');
  if (valor == 3) geniusPlayer.play('sounds/blue.mp3');
  if (valor == 4) geniusPlayer.play('sounds/green.mp3');
}
