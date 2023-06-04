<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_utterances_view</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the GetUtterancesView operation to get information about the utterances that your users have made to your bot

### Description

Use the `get_utterances_view` operation to get information about the
utterances that your users have made to your bot. You can use this list
to tune the utterances that your bot responds to.

For example, say that you have created a bot to order flowers. After
your users have used your bot for a while, use the `get_utterances_view`
operation to see the requests that they have made and whether they have
been successful. You might find that the utterance "I want flowers" is
not being recognized. You could add this utterance to the `OrderFlowers`
intent so that your bot recognizes that utterance.

After you publish a new version of a bot, you can get information about
the old version and the new so that you can compare the performance
across the two versions.

Utterance statistics are generated once a day. Data is available for the
last 15 days. You can request information for up to 5 versions of your
bot in each request. Amazon Lex returns the most frequent utterances
received by the bot in the last 15 days. The response contains
information about a maximum of 100 utterances for each version.

If you set `childDirected` field to true when you created your bot, if
you are using slot obfuscation with one or more slots, or if you opted
out of participating in improving Amazon Lex, utterances are not
available.

This operation requires permissions for the `lex:GetUtterancesView`
action.

### Usage

    lexmodelbuildingservice_get_utterances_view(botName, botVersions,
      statusType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_utterances_view_:_botName">botName</code></td>
<td><p>[required] The name of the bot for which utterance information
should be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_utterances_view_:_botVersions">botVersions</code></td>
<td><p>[required] An array of bot versions for which utterance
information should be returned. The limit is 5 versions per
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_utterances_view_:_statusType">statusType</code></td>
<td><p>[required] To return utterances that were recognized and handled,
use <code>Detected</code>. To return utterances that were not
recognized, use <code>Missed</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botName = "string",
      utterances = list(
        list(
          botVersion = "string",
          utterances = list(
            list(
              utteranceString = "string",
              count = 123,
              distinctUsers = 123,
              firstUtteredDate = as.POSIXct(
                "2015-01-01"
              ),
              lastUtteredDate = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_utterances_view(
      botName = "string",
      botVersions = list(
        "string"
      ),
      statusType = "Detected"|"Missed"
    )
