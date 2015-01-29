A little bit about...
# Asterisk

Jack Rosenthal
29 January 2015


## What is Asterisk?

Open source modular communication framework and server for Linux (and other unixes).

- Basic PBX
- Phone # validation
- Create a conference number
- Run an IP phone company
- Ring cell phone calls on your home phone via bluetooth when you are at home
- Automate sending text messages without paying for an overpriced API
- Automated robo-calls (with answering machine detection)
- Roll your own Skype


## History
- 1999: Project started by Mark Spencer because all current (proprietary) PBX solutions sucked.
- 2001: Mark's company (Linux Support Services) was renamed to Digium 
        Started selling hosted Asterisk with a proprietary GUI to help support development.
- 2005: Rewritten with release of v1.2
- 2005 to 2014: Lots of development
- 2014: Asterisk 13 Released


## Modules
Asterisk is modular. Near all functionalities are a part of a module:
chan\_pjsip: Provides SIP protocol.
chan\_iax: Talks with other asterisk servers.
     ^^ Both support audio and video.
codec\_g722: Popular audio codec 16 kHz.
codec\_ulaw: another popular audio codec, 8 kHz.

And more...
app\_sms, app\_confbridge, app\_musiconhold, res\_fax...


## Dialplan Syntax

```asterisk
   [some-context]
   ..eexten => 1234,1,Answer
   exten => 1234,2,Playback(tt-weasels)
   exten => 1234,3,Hangup
```


## Dialplan Syntax

```asterisk
   [some-context]
   exten => _12X45.,1,Answer
   exten => _12X45.,n,Playback(tt-weasels)
   exten => _12X45.,n,Hangup
```


## Dialplan Syntax

```asterisk
   [some-context]
   exten => _12X45.,1,Answer
    same => n,Playback(tt-weasels)
    same => n,Hangup
```


## Dialplan Syntax

Has some problems:
- No branching
    ```asterisk
       exten => 1234,1,GotoIf($[ ${someVar} == 12 ]?itstwelve:nottwelve)
        same => n(nottwelve),Hangup
        same => n(itstwelve),Playback(all-your-base)
    ```
- And otherwise pretty lousy and hard to type... so:

- There's AGI!


## Fun stuff

```asterisk
exten => 8388,1,Progress
 same => n,Playtones(659+494/428,494+415/214,523+440/214,587+494/214,
                     659+494/107,587+494/107,523+440/214,494+415/214,
                     330+440/428,330+440/214,523+440/214,659+523/428,
                     587+494/214,523+440/214,494+415/214,494+440/214,
                     494+415/214,523+440/214,587+494/428,659+523/428,
                     523+440/428,330+440/428,330+440/857,0/214,587+349/428,
                     698+440/214,880+523/214,880+523/107,880+523/107,
                     784+494/214,698+440/214,659+392/642,523+330/214,
                     659+392/214,659+440/107,659+392/107,587+349/214,
                     523+330/214,494+415/214,494+330/214,494+415/214,
                     523+440/214,587+494/214,587+415/214,659+523/214,
                     659+415/214,523+440/214,523+330/214,440+330/428,
                     440+330/428,0/428,330+262/857,262+220/857,294+247/857,
                     247+208/857,262+220/857,220+165/857,208+165/857,
                     247+208/428,0/428,330+262/857,262+220/857,294+247/857,
                     208+165/857,262+220/428,330+262/428,440+330/857,
                     415+294/857,0/857)
```
