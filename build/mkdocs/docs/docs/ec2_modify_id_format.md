<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_id_format</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the ID format for the specified resource on a per-Region basis

### Description

Modifies the ID format for the specified resource on a per-Region basis.
You can specify that resources should receive longer IDs (17-character
IDs) when they are created.

This request can only be used to modify longer ID settings for resource
types that are within the opt-in period. Resources currently in their
opt-in period include: `bundle` | `conversion-task` | `customer-gateway`
| `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` |
`export-task` | `flow-log` | `image` | `import-task` |
`internet-gateway` | `network-acl` | `network-acl-association` |
`network-interface` | `network-interface-attachment` | `prefix-list` |
`route-table` | `route-table-association` | `security-group` | `subnet`
| `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association`
| `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` |
`vpn-gateway`.

This setting applies to the IAM user who makes the request; it does not
apply to the entire Amazon Web Services account. By default, an IAM user
defaults to the same settings as the root user. If you're using this
action as the root user, then these settings apply to the entire
account, unless an IAM user explicitly overrides these settings for
themselves. For more information, see [Resource
IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the *Amazon Elastic Compute Cloud User Guide*.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant `Describe` command for the resource type.

### Usage

    ec2_modify_id_format(Resource, UseLongIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_id_format_:_Resource">Resource</code></td>
<td><p>[required] The type of resource: <code>bundle</code> |
<code>conversion-task</code> | <code>customer-gateway</code> |
<code>dhcp-options</code> | <code>elastic-ip-allocation</code> |
<code>elastic-ip-association</code> | <code>export-task</code> |
<code>flow-log</code> | <code>image</code> | <code>import-task</code> |
<code>internet-gateway</code> | <code>network-acl</code> |
<code>network-acl-association</code> | <code>network-interface</code> |
<code>network-interface-attachment</code> | <code>prefix-list</code> |
<code>route-table</code> | <code>route-table-association</code> |
<code>security-group</code> | <code>subnet</code> |
<code>subnet-cidr-block-association</code> | <code>vpc</code> |
<code>vpc-cidr-block-association</code> | <code>vpc-endpoint</code> |
<code>vpc-peering-connection</code> | <code>vpn-connection</code> |
<code>vpn-gateway</code>.</p>
<p>Alternatively, use the <code>all-current</code> option to include all
resource types that are currently within their opt-in period for longer
IDs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_id_format_:_UseLongIds">UseLongIds</code></td>
<td><p>[required] Indicate whether the resource should use longer IDs
(17-character IDs).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_id_format(
      Resource = "string",
      UseLongIds = TRUE|FALSE
    )
