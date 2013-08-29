/*
<!-- player container-->
	<a 
		href="http://pseudo01.hddn.com/vod/demo.flowplayervod/flowplayer-700.flv"    
		class="player"
		id="player"
		style="display:block;width:425px;height:300px;margin:10px auto"
	>
	</a>
*/
flowplayer
  (
    "player"
  , "http://releases.flowplayer.org/swf/flowplayer-3.2.12.swf",
    {
    	clip:
      {
      	// these two configuration variables does the trick
      	autoPlay: false
      , bufferLength: '10'
      , autoBuffering: true // <- do not place a comma here
      }
    	// playlist with five entries
    , playlist:
      [
    	// JPG image
    	// "/media/img/tutorial/tap-splash.jpg"
    	// swf file
    	//, { url: "", scaling: "fit" }
    	// video
        {url: "http://holisticware.net/mm/holisticware/know-how/sports/windsurfing/GOPR2079.MP4", scaling: "fit" }
      , { url: "http://holisticware.net/mm/holisticware/know-how/sports/windsurfing/GOPR2080.MP4", scaling: "fit" }
      , { url: "http://holisticware.net/mm/holisticware/know-how/sports/windsurfing/GOPR2156-camera-mount-boom-head.MP4", scaling: "fit" }
      , { url: "http://holisticware.net/mm/holisticware/know-how/sports/windsurfing/GOPR2158-camera-mount-boom-end.MP4", scaling: "fit" }
      , { url: "http://holisticware.net/mm/holisticware/know-how/sports/windsurfing/GOPR2157-camera-mount-boom-end.MP4", scaling: "fit" }
      , { url: "http://holisticware.net/mm/holisticware/know-how/sports/windsurfing/GOPR2159.MP4", scaling: "fit" }
    	// another image. works as splash for the audio clip
    	//, {url: "/media/img/demos/national.jpg", duration: 0}
    	// audio, requires audio plugin. custom duration
    	//, {url: "/media/data/fake_empire.mp3", duration: 25}
  ],

    	// show playlist buttons in controlbar
    	plugins: {
    		controls: {
    			playlist: true,

    			// use tube skin with a different background color
    			url: "http://releases.flowplayer.org/swf/flowplayer.controls-tube-3.2.12.swf",
    			backgroundColor: '#aedaff'
    		}
    	}
    }
  );