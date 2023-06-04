<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_namespaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a list of specified namespaces

### Description

Returns information about a list of specified namespaces.

### Usage

    redshiftserverless_list_namespaces(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_namespaces_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to display the
next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_namespaces_:_nextToken">nextToken</code></td>
<td><p>If your initial <code>list_namespaces</code> operation returns a
<code>nextToken</code>, you can include the returned
<code>nextToken</code> in following <code>list_namespaces</code>
operations, which returns results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      namespaces = list(
        list(
          adminUsername = "string",
          creationDate = as.POSIXct(
            "2015-01-01"
          ),
          dbName = "string",
          defaultIamRoleArn = "string",
          iamRoles = list(
            "string"
          ),
          kmsKeyId = "string",
          logExports = list(
            "useractivitylog"|"userlog"|"connectionlog"
          ),
          namespaceArn = "string",
          namespaceId = "string",
          namespaceName = "string",
          status = "AVAILABLE"|"MODIFYING"|"DELETING"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_namespaces(
      maxResults = 123,
      nextToken = "string"
    )
