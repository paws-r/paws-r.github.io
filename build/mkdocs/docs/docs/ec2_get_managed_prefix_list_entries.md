<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_managed_prefix_list_entries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the entries for a specified managed prefix list

### Description

Gets information about the entries for a specified managed prefix list.

### Usage

    ec2_get_managed_prefix_list_entries(DryRun, PrefixListId, TargetVersion,
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
id="ec2_get_managed_prefix_list_entries_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_managed_prefix_list_entries_:_PrefixListId">PrefixListId</code></td>
<td><p>[required] The ID of the prefix list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_managed_prefix_list_entries_:_TargetVersion">TargetVersion</code></td>
<td><p>The version of the prefix list for which to return the entries.
The default is the current version.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_managed_prefix_list_entries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_managed_prefix_list_entries_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entries = list(
        list(
          Cidr = "string",
          Description = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_managed_prefix_list_entries(
      DryRun = TRUE|FALSE,
      PrefixListId = "string",
      TargetVersion = 123,
      MaxResults = 123,
      NextToken = "string"
    )
