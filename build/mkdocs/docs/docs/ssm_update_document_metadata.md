<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_document_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates information related to approval reviews for a specific version of a change template in Change Manager

### Description

Updates information related to approval reviews for a specific version
of a change template in Change Manager.

### Usage

    ssm_update_document_metadata(Name, DocumentVersion, DocumentReviews)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_update_document_metadata_:_Name">Name</code></td>
<td><p>[required] The name of the change template for which a version's
metadata is to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_document_metadata_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The version of a change template in which to update approval
metadata.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_document_metadata_:_DocumentReviews">DocumentReviews</code></td>
<td><p>[required] The change template review details to update.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_document_metadata(
      Name = "string",
      DocumentVersion = "string",
      DocumentReviews = list(
        Action = "SendForReview"|"UpdateReview"|"Approve"|"Reject",
        Comment = list(
          list(
            Type = "Comment",
            Content = "string"
          )
        )
      )
    )
