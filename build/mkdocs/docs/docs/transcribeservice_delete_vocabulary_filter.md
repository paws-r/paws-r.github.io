<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_vocabulary_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom vocabulary filter

### Description

Deletes a custom vocabulary filter. To use this operation, specify the
name of the custom vocabulary filter you want to delete using
`VocabularyFilterName`. Custom vocabulary filter names are case
sensitive.

### Usage

    transcribeservice_delete_vocabulary_filter(VocabularyFilterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_vocabulary_filter_:_VocabularyFilterName">VocabularyFilterName</code></td>
<td><p>[required] The name of the custom vocabulary filter you want to
delete. Custom vocabulary filter names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_vocabulary_filter(
      VocabularyFilterName = "string"
    )
