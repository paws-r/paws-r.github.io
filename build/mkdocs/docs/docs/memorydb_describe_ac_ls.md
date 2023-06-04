<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_describe_ac_ls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of ACLs

### Description

Returns a list of ACLs

### Usage

    memorydb_describe_ac_ls(ACLName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="memorydb_describe_ac_ls_:_ACLName">ACLName</code></td>
<td><p>The name of the ACL</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_describe_ac_ls_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code id="memorydb_describe_ac_ls_:_NextToken">NextToken</code></td>
<td><p>An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ACLs = list(
        list(
          Name = "string",
          Status = "string",
          UserNames = list(
            "string"
          ),
          MinimumEngineVersion = "string",
          PendingChanges = list(
            UserNamesToRemove = list(
              "string"
            ),
            UserNamesToAdd = list(
              "string"
            )
          ),
          Clusters = list(
            "string"
          ),
          ARN = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_ac_ls(
      ACLName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
