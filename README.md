# MasterEAS
## The ultimate standalone Emergency Alert System command system built for FiveM.

MasterEAS was particularly designed to make Emergency Alert Systems (EAS) accessible to classic FiveM servers that use standalone plugins and something like vMenu. This has been particularly engineered for a combination of plugin quality and stability.

## Dependencies
| Dependency Name | Description |
| --- | --- |
| [Badger_Discord_API](https://github.com/JaredScar/Badger_Discord_API) | Used for Discord intergration, otherwise ignore |

## Commands
* Proper usage is shown if the command is improperly typed, due to the low amount of commands these messages are configurable, but it is not recommended to change them.
* If a command parameter has double quotation marks, you are required to use them, this is for processing arguments.
* Moreover, you can actually add double quotation marks within the message itself by preceding it with a backslash.

**Example command using these rules:** `/eas create "Nationwide" "Anomoly \"Apollyon\" detected at Sandy Shores and swiftly moving to Los Santos, please stay inside, lock your doors, close your blinds, and remain as quiet as possible while the SCP foundation handles this situation."`

| Message | Location
| --- | --- |
| Anomoly "Apollyon" detected at Sandy Shores police station, please stay inside, lock your doors, close your blinds, and remain as quiet as possible while the SCP foundation handles this situation. | Nationwide |

|   Command Name   |     Permission     |      Description      | Usage |
|------------------|--------------------|-----------------------|-------|
|    /eas create   | mastereas.create   |  Create an EAS alert  | /eas create "[location]" "[message]" |
|    /eas end      | mastereas.end      |  End an EAS alert     | /eas end |
|    /eas show     | mastereas.show     |  Show an EAS alert    | /eas show |

***

Copyright © 2024 asciidude. All rights reserved.\
Use of this code requires proper attribution.
