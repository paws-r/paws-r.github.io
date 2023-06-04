<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_list_custom_vocabulary_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Paginated list of custom vocabulary items for a given bot locale's custom vocabulary

### Description

Paginated list of custom vocabulary items for a given bot locale's
custom vocabulary.

### Usage

    lexmodelsv2_list_custom_vocabulary_items(botId, botVersion, localeId,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_list_custom_vocabulary_items_:_botId">botId</code></td>
<td><p>[required] The identifier of the version of the bot associated
with this custom vocabulary.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_custom_vocabulary_items_:_botVersion">botVersion</code></td>
<td><p>[required] The bot version of the bot to the list custom
vocabulary request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_custom_vocabulary_items_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale where this
custom vocabulary is used. The string must match one of the supported
locales. For more information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_list_custom_vocabulary_items_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items returned by the list
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_list_custom_vocabulary_items_:_nextToken">nextToken</code></td>
<td><p>The nextToken identifier to the list custom vocabulary
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      customVocabularyItems = list(
        list(
          itemId = "string",
          phrase = "string",
          weight = 123,
          displayAs = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_custom_vocabulary_items(
      botId = "string",
      botVersion = "string",
      localeId = "string",
      maxResults = 123,
      nextToken = "string"
    )
