<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_batch_create_custom_vocabulary_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a batch of custom vocabulary items for a given bot locale's custom vocabulary

### Description

Create a batch of custom vocabulary items for a given bot locale's
custom vocabulary.

### Usage

    lexmodelsv2_batch_create_custom_vocabulary_item(botId, botVersion,
      localeId, customVocabularyItemList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_batch_create_custom_vocabulary_item_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot associated with this custom
vocabulary.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_batch_create_custom_vocabulary_item_:_botVersion">botVersion</code></td>
<td><p>[required] The identifier of the version of the bot associated
with this custom vocabulary.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_batch_create_custom_vocabulary_item_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale where this
custom vocabulary is used. The string must match one of the supported
locales. For more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
Languages</a> .</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_batch_create_custom_vocabulary_item_:_customVocabularyItemList">customVocabularyItemList</code></td>
<td><p>[required] A list of new custom vocabulary items. Each entry must
contain a phrase and can optionally contain a displayAs and/or a
weight.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      errors = list(
        list(
          itemId = "string",
          errorMessage = "string",
          errorCode = "DUPLICATE_INPUT"|"RESOURCE_DOES_NOT_EXIST"|"RESOURCE_ALREADY_EXISTS"|"INTERNAL_SERVER_FAILURE"
        )
      ),
      resources = list(
        list(
          itemId = "string",
          phrase = "string",
          weight = 123,
          displayAs = "string"
        )
      )
    )

### Request syntax

    svc$batch_create_custom_vocabulary_item(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      customVocabularyItemList = list(
        list(
          phrase = "string",
          weight = 123,
          displayAs = "string"
        )
      )
    )
