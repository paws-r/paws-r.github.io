<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bot_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an Amazon Lex bot alias

### Description

Returns information about an Amazon Lex bot alias. For more information
about aliases, see versioning-aliases.

This operation requires permissions for the `lex:GetBotAlias` action.

### Usage

    lexmodelbuildingservice_get_bot_alias(name, botName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_alias_:_name">name</code></td>
<td><p>[required] The name of the bot alias. The name is case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_alias_:_botName">botName</code></td>
<td><p>[required] The name of the bot.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      botVersion = "string",
      botName = "string",
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      checksum = "string",
      conversationLogs = list(
        logSettings = list(
          list(
            logType = "AUDIO"|"TEXT",
            destination = "CLOUDWATCH_LOGS"|"S3",
            kmsKeyArn = "string",
            resourceArn = "string",
            resourcePrefix = "string"
          )
        ),
        iamRoleArn = "string"
      )
    )

### Request syntax

    svc$get_bot_alias(
      name = "string",
      botName = "string"
    )
