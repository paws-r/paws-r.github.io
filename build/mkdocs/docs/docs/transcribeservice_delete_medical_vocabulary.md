<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_medical_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom medical vocabulary

### Description

Deletes a custom medical vocabulary. To use this operation, specify the
name of the custom vocabulary you want to delete using `VocabularyName`.
Custom vocabulary names are case sensitive.

### Usage

    transcribeservice_delete_medical_vocabulary(VocabularyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_medical_vocabulary_:_VocabularyName">VocabularyName</code></td>
<td><p>[required] The name of the custom medical vocabulary you want to
delete. Custom medical vocabulary names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_medical_vocabulary(
      VocabularyName = "string"
    )
