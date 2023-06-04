<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the vocabulary that has the given identifier

### Description

Deletes the vocabulary that has the given identifier.

### Usage

    connect_delete_vocabulary(InstanceId, VocabularyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_vocabulary_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_vocabulary_:_VocabularyId">VocabularyId</code></td>
<td><p>[required] The identifier of the custom vocabulary.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularyArn = "string",
      VocabularyId = "string",
      State = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"DELETE_IN_PROGRESS"
    )

### Request syntax

    svc$delete_vocabulary(
      InstanceId = "string",
      VocabularyId = "string"
    )
