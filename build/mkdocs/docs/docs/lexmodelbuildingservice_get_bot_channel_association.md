<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bot_channel_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the association between an Amazon Lex bot and a messaging platform

### Description

Returns information about the association between an Amazon Lex bot and
a messaging platform.

This operation requires permissions for the
`lex:GetBotChannelAssociation` action.

### Usage

    lexmodelbuildingservice_get_bot_channel_association(name, botName,
      botAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_channel_association_:_name">name</code></td>
<td><p>[required] The name of the association between the bot and the
channel. The name is case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_channel_association_:_botName">botName</code></td>
<td><p>[required] The name of the Amazon Lex bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_channel_association_:_botAlias">botAlias</code></td>
<td><p>[required] An alias pointing to the specific version of the
Amazon Lex bot to which this association is being made.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      botAlias = "string",
      botName = "string",
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      type = "Facebook"|"Slack"|"Twilio-Sms"|"Kik",
      botConfiguration = list(
        "string"
      ),
      status = "IN_PROGRESS"|"CREATED"|"FAILED",
      failureReason = "string"
    )

### Request syntax

    svc$get_bot_channel_association(
      name = "string",
      botName = "string",
      botAlias = "string"
    )
