<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_namespaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the namespaces for the specified Amazon Web Services account

### Description

Lists the namespaces for the specified Amazon Web Services account. This
operation doesn't list deleted namespaces.

### Usage

    quicksight_list_namespaces(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_namespaces_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the Amazon QuickSight namespaces that you want to
list.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_namespaces_:_NextToken">NextToken</code></td>
<td><p>A unique pagination token that can be used in a subsequent
request. You will receive a pagination token in the response body of a
previous <code>ListNameSpaces</code> API call if there is more data that
can be returned. To receive the data, make another
<code>list_namespaces</code> API call with the returned token to
retrieve the next page of data. Each token is valid for 24 hours. If you
try to make a <code>list_namespaces</code> API call with an expired
token, you will receive a <code
style="white-space: pre;">⁠HTTP 400 InvalidNextTokenException⁠</code>
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_namespaces_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Namespaces = list(
        list(
          Name = "string",
          Arn = "string",
          CapacityRegion = "string",
          CreationStatus = "CREATED"|"CREATING"|"DELETING"|"RETRYABLE_FAILURE"|"NON_RETRYABLE_FAILURE",
          IdentityStore = "QUICKSIGHT",
          NamespaceError = list(
            Type = "PERMISSION_DENIED"|"INTERNAL_SERVICE_ERROR",
            Message = "string"
          )
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_namespaces(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
