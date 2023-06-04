<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_get_resource_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resource policies attached to the specified response plan

### Description

Retrieves the resource policies attached to the specified response plan.

### Usage

    ssmincidents_get_resource_policies(maxResults, nextToken, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_get_resource_policies_:_maxResults">maxResults</code></td>
<td><p>The maximum number of resource policies to display for each page
of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_get_resource_policies_:_nextToken">nextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_get_resource_policies_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response plan
with the attached resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      resourcePolicies = list(
        list(
          policyDocument = "string",
          policyId = "string",
          ramResourceShareRegion = "string"
        )
      )
    )

### Request syntax

    svc$get_resource_policies(
      maxResults = 123,
      nextToken = "string",
      resourceArn = "string"
    )
