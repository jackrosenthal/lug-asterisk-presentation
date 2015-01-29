           ___  _      __     __            ____         __
          / _ \(_)__ _/ /__  / /__ ____    / __/_ _____ / /____ __ __
         / // / / _ `/ / _ \/ / _ `/ _ \  _\ \/ // / _ \ __/ _ `\ \ /
        /____/_/\_,_/_/ .__/_/\_,_/_//_/ /___/\_, /_//_\__/\_,_/_\_\
                     /_/                     /___/
        Has some problems:
        - No branching
            ```asterisk
               exten => 1234,1,GotoIf($[ ${someVar} == 12 ]?itstwelve:nottwelve)
                same => n(nottwelve),Hangup
                same => n(itstwelve),Playback(all-your-base)
            ```
        - And otherwise pretty lousy and hard to type... so:

        • There's AGI!

















































































slide 008
