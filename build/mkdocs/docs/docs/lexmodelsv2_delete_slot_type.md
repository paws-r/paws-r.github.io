<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a slot type from a bot locale

### Description

Deletes a slot type from a bot locale.

If a slot is using the slot type, Amazon Lex throws a
`ResourceInUseException` exception. To avoid the exception, set the
`skipResourceInUseCheck` parameter to `true`.

### Usage

    lexmodelsv2_delete_slot_type(slotTypeId, botId, botVersion, localeId,
      skipResourceInUseCheck)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_slot_type_:_slotTypeId">slotTypeId</code></td>
<td><p>[required] The identifier of the slot type to delete.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_delete_slot_type_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with the slot
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_slot_type_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot associated with the slot
type.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_slot_type_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale that the
slot type will be deleted from. The string must match one of the
supported locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_slot_type_:_skipResourceInUseCheck">skipResourceInUseCheck</code></td>
<td><p>By default, the <code>delete_slot_type</code> operations throws a
<code>ResourceInUseException</code> exception if you try to delete a
slot type used by a slot. Set the <code>skipResourceInUseCheck</code>
parameter to <code>true</code> to skip this check and remove the slot
type even if a slot uses it.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_slot_type(
      slotTypeId = "string",
      botId = "string",
      botVersion = "string",
      localeId = "string",
      skipResourceInUseCheck = TRUE|FALSE
    )
