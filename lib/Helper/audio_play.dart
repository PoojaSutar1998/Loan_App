import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_beep/flutter_beep.dart';

sendSound()async {
  FlutterBeep.beep();
}

receiveSound()async{
   AssetsAudioPlayer audioPlayer = AssetsAudioPlayer() ;
  Future.delayed(Duration.zero, () {
    audioPlayer.open(
      Audio(
        'assets/audios/sound_receive.mp3',
      ),
    );
  });
}