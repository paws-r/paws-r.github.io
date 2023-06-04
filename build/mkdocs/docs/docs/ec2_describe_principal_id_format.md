<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_principal_id_format</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference

### Description

Describes the ID format settings for the root user and all IAM roles and
IAM users that have explicitly specified a longer ID (17-character ID)
preference.

By default, all IAM roles and IAM users default to the same ID settings
as the root user, unless they explicitly override the settings. This
request is useful for identifying those IAM users and IAM roles that
have overridden the default ID settings.

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

    ec2_describe_principal_id_format(DryRun, Resources, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_principal_id_format_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_principal_id_format_:_Resources">Resources</code></td>
<td><p>The type of resource: <code>bundle</code> |
<code>conversion-task</code> | <code>customer-gateway</code> |
<code>dhcp-options</code> | <code>elastic-ip-allocation</code> |
<code>elastic-ip-association</code> | <code>export-task</code> |
<code>flow-log</code> | <code>image</code> | <code>import-task</code> |
<code>instance</code> | <code>internet-gateway</code> |
<code>network-acl</code> | <code>network-acl-association</code> |
<code>network-interface</code> |
<code>network-interface-attachment</code> | <code>prefix-list</code> |
<code>reservation</code> | <code>route-table</code> |
<code>route-table-association</code> | <code>security-group</code> |
<code>snapshot</code> | <code>subnet</code> |
<code>subnet-cidr-block-association</code> | <code>volume</code> |
<code>vpc</code> | <code>vpc-cidr-block-association</code> |
<code>vpc-endpoint</code> | <code>vpc-peering-connection</code> |
<code>vpn-connection</code> | <code>vpn-gateway</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_principal_id_format_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
NextToken value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_principal_id_format_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Principals = list(
        list(
          Arn = "string",
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_principal_id_format(
      DryRun = TRUE|FALSE,
      Resources = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
