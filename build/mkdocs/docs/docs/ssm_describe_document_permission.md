<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_document_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions for a Amazon Web Services Systems Manager document (SSM document)

### Description

Describes the permissions for a Amazon Web Services Systems Manager
document (SSM document). If you created the document, you are the owner.
If a document is shared, it can either be shared privately (by
specifying a user's Amazon Web Services account ID) or publicly (*All*).

### Usage

    ssm_describe_document_permission(Name, PermissionType, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_describe_document_permission_:_Name">Name</code></td>
<td><p>[required] The name of the document for which you are the
owner.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_document_permission_:_PermissionType">PermissionType</code></td>
<td><p>[required] The permission type for the document. The permission
type can be <em>Share</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_document_permission_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_document_permission_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountIds = list(
        "string"
      ),
      AccountSharingInfoList = list(
        list(
          AccountId = "string",
          SharedDocumentVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_document_permission(
      Name = "string",
      PermissionType = "Share",
      MaxResults = 123,
      NextToken = "string"
    )
