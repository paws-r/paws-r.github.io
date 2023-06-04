<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_account_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the permissions an account has to configure Amazon Inspector

### Description

Lists the permissions an account has to configure Amazon Inspector.

### Usage

    inspector2_list_account_permissions(maxResults, nextToken, service)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_account_permissions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_account_permissions_:_nextToken">nextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_account_permissions_:_service">service</code></td>
<td><p>The service scan type to check permissions for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      permissions = list(
        list(
          operation = "ENABLE_SCANNING"|"DISABLE_SCANNING"|"ENABLE_REPOSITORY"|"DISABLE_REPOSITORY",
          service = "EC2"|"ECR"|"LAMBDA"
        )
      )
    )

### Request syntax

    svc$list_account_permissions(
      maxResults = 123,
      nextToken = "string",
      service = "EC2"|"ECR"|"LAMBDA"
    )
