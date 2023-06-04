<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_utterances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes stored utterances

### Description

Deletes stored utterances.

Amazon Lex stores the utterances that users send to your bot. Utterances
are stored for 15 days for use with the `list_aggregated_utterances`
operation, and then stored indefinitely for use in improving the ability
of your bot to respond to user input..

Use the `delete_utterances` operation to manually delete utterances for
a specific session. When you use the `delete_utterances` operation,
utterances stored for improving your bot's ability to respond to user
input are deleted immediately. Utterances stored for use with the
`list_aggregated_utterances` operation are deleted after 15 days.

### Usage

    lexmodelsv2_delete_utterances(botId, localeId, sessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_utterances_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the
utterances.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_utterances_:_localeId">localeId</code></td>
<td><p>The identifier of the language and locale where the utterances
were collected. The string must match one of the supported locales. For
more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_utterances_:_sessionId">sessionId</code></td>
<td><p>The unique identifier of the session with the user. The ID is
returned in the response from the <a
href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeText.html">RecognizeText</a>
and <a
href="https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeUtterance.html">RecognizeUtterance</a>
operations.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_utterances(
      botId = "string",
      localeId = "string",
      sessionId = "string"
    )
