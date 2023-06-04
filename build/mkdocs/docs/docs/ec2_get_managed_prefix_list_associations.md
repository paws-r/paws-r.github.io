<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_managed_prefix_list_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the resources that are associated with the specified managed prefix list

### Description

Gets information about the resources that are associated with the
specified managed prefix list.

### Usage

    ec2_get_managed_prefix_list_associations(DryRun, PrefixListId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_managed_prefix_list_associations_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_managed_prefix_list_associations_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_managed_prefix_list_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_managed_prefix_list_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PrefixListAssociations = list(
        list(
          ResourceId = "string",
          ResourceOwner = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_managed_prefix_list_associations(
      DryRun = TRUE|FALSE,
      PrefixListId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
