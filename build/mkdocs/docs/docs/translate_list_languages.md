<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_list_languages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of languages (RFC-5646 codes and names) that Amazon Translate supports

### Description

Provides a list of languages (RFC-5646 codes and names) that Amazon
Translate supports.

### Usage

    translate_list_languages(DisplayLanguageCode, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_list_languages_:_DisplayLanguageCode">DisplayLanguageCode</code></td>
<td><p>The language code for the language to use to display the language
names in the response. The language code is <code>en</code> by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_list_languages_:_NextToken">NextToken</code></td>
<td><p>Include the NextToken value to fetch the next group of supported
languages.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_list_languages_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Languages = list(
        list(
          LanguageName = "string",
          LanguageCode = "string"
        )
      ),
      DisplayLanguageCode = "de"|"en"|"es"|"fr"|"it"|"ja"|"ko"|"pt"|"zh"|"zh-TW",
      NextToken = "string"
    )

### Request syntax

    svc$list_languages(
      DisplayLanguageCode = "de"|"en"|"es"|"fr"|"it"|"ja"|"ko"|"pt"|"zh"|"zh-TW",
      NextToken = "string",
      MaxResults = 123
    )
