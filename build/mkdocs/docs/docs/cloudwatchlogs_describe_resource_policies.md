<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_resource_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource policies in this account

### Description

Lists the resource policies in this account.

### Usage

    cloudwatchlogs_describe_resource_policies(nextToken, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_resource_policies_:_nextToken">nextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_resource_policies_:_limit">limit</code></td>
<td><p>The maximum number of resource policies to be displayed with one
call of this API.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourcePolicies = list(
        list(
          policyName = "string",
          policyDocument = "string",
          lastUpdatedTime = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_resource_policies(
      nextToken = "string",
      limit = 123
    )
