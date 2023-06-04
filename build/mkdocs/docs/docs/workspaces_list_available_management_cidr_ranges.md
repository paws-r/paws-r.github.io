<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_list_available_management_cidr_ranges</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable Bring Your Own License (BYOL)

### Description

Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
that you can use for the network management interface when you enable
Bring Your Own License (BYOL).

This operation can be run only by Amazon Web Services accounts that are
enabled for BYOL. If your account isn't enabled for BYOL, you'll receive
an `AccessDeniedException` error.

The management network interface is connected to a secure Amazon
WorkSpaces management network. It is used for interactive streaming of
the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon
WorkSpaces to manage the WorkSpace.

### Usage

    workspaces_list_available_management_cidr_ranges(
      ManagementCidrRangeConstraint, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_list_available_management_cidr_ranges_:_ManagementCidrRangeConstraint">ManagementCidrRangeConstraint</code></td>
<td><p>[required] The IP address range to search. Specify an IP address
range that is compatible with your network and in CIDR notation (that
is, specify the range as an IPv4 CIDR block).</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_list_available_management_cidr_ranges_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_list_available_management_cidr_ranges_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ManagementCidrRanges = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_available_management_cidr_ranges(
      ManagementCidrRangeConstraint = "string",
      MaxResults = 123,
      NextToken = "string"
    )
