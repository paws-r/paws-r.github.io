<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_describe_custom_vocabulary_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides metadata information about a custom vocabulary

### Description

Provides metadata information about a custom vocabulary.

### Usage

    lexmodelsv2_describe_custom_vocabulary_metadata(botId, botVersion,
      localeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_custom_vocabulary_metadata_:_botId">botId</code></td>
<td><p>[required] The unique identifier of the bot that contains the
custom vocabulary.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_describe_custom_vocabulary_metadata_:_botVersion">botVersion</code></td>
<td><p>[required] The bot version of the bot to return metadata
for.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_describe_custom_vocabulary_metadata_:_localeId">localeId</code></td>
<td><p>[required] The locale to return the custom vocabulary information
for. The locale must be <code>en_GB</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      customVocabularyStatus = "Ready"|"Deleting"|"Exporting"|"Importing"|"Creating",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_custom_vocabulary_metadata(
      botId = "string",
      botVersion = "string",
      localeId = "string"
    )
