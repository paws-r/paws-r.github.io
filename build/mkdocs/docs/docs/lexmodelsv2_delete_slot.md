<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_slot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified slot from an intent

### Description

Deletes the specified slot from an intent.

### Usage

    lexmodelsv2_delete_slot(slotId, botId, botVersion, localeId, intentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_slot_:_slotId">slotId</code></td>
<td><p>[required] The identifier of the slot to delete.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_delete_slot_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with the slot to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_slot_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot associated with the slot to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_delete_slot_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that the
slot will be deleted from. The string must match one of the supported
locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="lexmodelsv2_delete_slot_:_intentId">intentId</code></td>
<td><p>[required] The identifier of the intent associated with the
slot.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_slot(
      slotId = "string",
      botId = "string",
      botVersion = "string",
      localeId = "string",
      intentId = "string"
    )
