<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_custom_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a custom vocabulary from the specified locale in the specified bot

### Description

Removes a custom vocabulary from the specified locale in the specified
bot.

### Usage

    lexmodelsv2_delete_custom_vocabulary(botId, botVersion, localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_custom_vocabulary_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot to remove the custom
vocabulary from.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_custom_vocabulary_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot to remove the custom vocabulary
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_custom_vocabulary_:_localeId">localeId</code></td>
<td><p>[required] The locale identifier for the locale that contains the
custom vocabulary to remove.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      customVocabularyStatus = "Ready"|"Deleting"|"Exporting"|"Importing"|"Creating"
    )

### Request syntax

    svc$delete_custom_vocabulary(
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
