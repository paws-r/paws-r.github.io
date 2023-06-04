<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified intent

### Description

Removes the specified intent.

Deleting an intent also deletes the slots associated with the intent.

### Usage

    lexmodelsv2_delete_intent(intentId, botId, botVersion, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_intent_:_intentId">intentId</code></td>
<td><p>[required] The unique identifier of the intent to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_delete_intent_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with the
intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_intent_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot associated with the
intent.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_delete_intent_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale where the
bot will be deleted. The string must match one of the supported locales.
For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_intent(
      intentId = "string",
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
