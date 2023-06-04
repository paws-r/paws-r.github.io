<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_bot_channel_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all of the channels associated with the specified bot

### Description

Returns a list of all of the channels associated with the specified bot.

The `get_bot_channel_associations` operation requires permissions for
the `lex:GetBotChannelAssociations` action.

### Usage

    lexmodelbuildingservice_get_bot_channel_associations(botName, botAlias,
      nextToken, maxResults, nameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_channel_associations_:_botName">botName</code></td>
<td><p>[required] The name of the Amazon Lex bot in the
association.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_channel_associations_:_botAlias">botAlias</code></td>
<td><p>[required] An alias pointing to the specific version of the
Amazon Lex bot to which this association is being made.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_channel_associations_:_nextToken">nextToken</code></td>
<td><p>A pagination token for fetching the next page of associations. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of associations, specify
the pagination token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_bot_channel_associations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of associations to return in the response. The
default is 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_bot_channel_associations_:_nameContains">nameContains</code></td>
<td><p>Substring to match in channel association names. An association
will be returned if any part of its name matches the substring. For
example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot
channel associations, use a hyphen ("-") as the
<code>nameContains</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botChannelAssociations = list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_bot_channel_associations(
      botName = "string",
      botAlias = "string",
      nextToken = "string",
      maxResults = 123,
      nameContains = "string"
    )
