<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_document_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all versions for a document

### Description

List all versions for a document.

### Usage

    ssm_list_document_versions(Name, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_list_document_versions_:_Name">Name</code></td>
<td><p>[required] The name of the document. You can specify an Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_document_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_document_versions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentVersions = list(
        list(
          Name = "string",
          DisplayName = "string",
          DocumentVersion = "string",
          VersionName = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          IsDefaultVersion = TRUE|FALSE,
          DocumentFormat = "YAML"|"JSON"|"TEXT",
          Status = "Creating"|"Active"|"Updating"|"Deleting"|"Failed",
          StatusInformation = "string",
          ReviewStatus = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_document_versions(
      Name = "string",
      MaxResults = 123,
      NextToken = "string"
    )
