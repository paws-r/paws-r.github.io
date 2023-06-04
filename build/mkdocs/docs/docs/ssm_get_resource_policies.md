<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_resource_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of the Policy object

### Description

Returns an array of the `Policy` object.

### Usage

    ssm_get_resource_policies(ResourceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_resource_policies_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the resource to which
the policies are attached.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_resource_policies_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_resource_policies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Policies = list(
        list(
          PolicyId = "string",
          PolicyHash = "string",
          Policy = "string"
        )
      )
    )

### Request syntax

    svc$get_resource_policies(
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
