<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_document_metadata_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Information about approval reviews for a version of a change template in Change Manager

### Description

Information about approval reviews for a version of a change template in
Change Manager.

### Usage

    ssm_list_document_metadata_history(Name, DocumentVersion, Metadata,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_document_metadata_history_:_Name">Name</code></td>
<td><p>[required] The name of the change template.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_document_metadata_history_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The version of the change template.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_document_metadata_history_:_Metadata">Metadata</code></td>
<td><p>[required] The type of data for which details are being
requested. Currently, the only supported value is
<code>DocumentReviews</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_document_metadata_history_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_document_metadata_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      DocumentVersion = "string",
      Author = "string",
      Metadata = list(
        ReviewerResponse = list(
          list(
            CreateTime = as.POSIXct(
              "2015-01-01"
            ),
            UpdatedTime = as.POSIXct(
              "2015-01-01"
            ),
            ReviewStatus = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED",
            Comment = list(
              list(
                Type = "Comment",
                Content = "string"
              )
            ),
            Reviewer = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_document_metadata_history(
      Name = "string",
      DocumentVersion = "string",
      Metadata = "DocumentReviews",
      NextToken = "string",
      MaxResults = 123
    )
