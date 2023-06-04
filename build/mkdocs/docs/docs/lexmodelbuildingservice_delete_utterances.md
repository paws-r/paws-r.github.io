<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_utterances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes stored utterances

### Description

Deletes stored utterances.

Amazon Lex stores the utterances that users send to your bot. Utterances
are stored for 15 days for use with the `get_utterances_view` operation,
and then stored indefinitely for use in improving the ability of your
bot to respond to user input.

Use the `delete_utterances` operation to manually delete stored
utterances for a specific user. When you use the `delete_utterances`
operation, utterances stored for improving your bot's ability to respond
to user input are deleted immediately. Utterances stored for use with
the `get_utterances_view` operation are deleted after 15 days.

This operation requires permissions for the `lex:DeleteUtterances`
action.

### Usage

    lexmodelbuildingservice_delete_utterances(botName, userId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_utterances_:_botName">botName</code></td>
<td><p>[required] The name of the bot that stored the
utterances.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_delete_utterances_:_userId">userId</code></td>
<td><p>[required] The unique identifier for the user that made the
utterances. This is the user ID that was sent in the <a
href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a>
or <a
href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a>
operation request that contained the utterance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_utterances(
      botName = "string",
      userId = "string"
    )
