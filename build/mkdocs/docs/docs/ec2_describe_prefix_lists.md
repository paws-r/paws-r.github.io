<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_prefix_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes available Amazon Web Services services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service

### Description

Describes available Amazon Web Services services in a prefix list
format, which includes the prefix list name and prefix list ID of the
service and the IP address range for the service.

We recommend that you use `describe_managed_prefix_lists` instead.

### Usage

    ec2_describe_prefix_lists(DryRun, Filters, MaxResults, NextToken,
      PrefixListIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_prefix_lists_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_prefix_lists_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>prefix-list-id</code>: The ID of a prefix list.</p></li>
<li><p><code>prefix-list-name</code>: The name of a prefix
list.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_prefix_lists_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_prefix_lists_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_prefix_lists_:_PrefixListIds">PrefixListIds</code></td>
<td><p>One or more prefix list IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PrefixLists = list(
        list(
          Cidrs = list(
            "string"
          ),
          PrefixListId = "string",
          PrefixListName = "string"
        )
      )
    )

### Request syntax

    svc$describe_prefix_lists(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      PrefixListIds = list(
        "string"
      )
    )
