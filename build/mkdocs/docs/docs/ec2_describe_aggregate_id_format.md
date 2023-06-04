<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_aggregate_id_format</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the longer ID format settings for all resource types in a specific Region

### Description

Describes the longer ID format settings for all resource types in a
specific Region. This request is useful for performing a quick audit to
determine whether a specific Region is fully opted in for longer IDs
(17-character IDs).

This request only returns information about resource types that support
longer IDs.

The following resource types support longer IDs: `bundle` |
`conversion-task` | `customer-gateway` | `dhcp-options` |
`elastic-ip-allocation` | `elastic-ip-association` | `export-task` |
`flow-log` | `image` | `import-task` | `instance` | `internet-gateway` |
`network-acl` | `network-acl-association` | `network-interface` |
`network-interface-attachment` | `prefix-list` | `reservation` |
`route-table` | `route-table-association` | `security-group` |
`snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` |
`vpc` | `vpc-cidr-block-association` | `vpc-endpoint` |
`vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

### Usage

    ec2_describe_aggregate_id_format(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_aggregate_id_format_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UseLongIdsAggregated = TRUE|FALSE,
      Statuses = list(
        list(
          Deadline = as.POSIXct(
            "2015-01-01"
          ),
          Resource = "string",
          UseLongIds = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_aggregate_id_format(
      DryRun = TRUE|FALSE
    )
