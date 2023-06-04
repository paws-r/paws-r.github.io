<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_identity_id_format</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the ID format settings for resources for the specified IAM user, IAM role, or root user

### Description

Describes the ID format settings for resources for the specified IAM
user, IAM role, or root user. For example, you can view the resource
types that are enabled for longer IDs. This request only returns
information about resource types whose ID formats can be modified; it
does not return information about other resource types. For more
information, see [Resource
IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the *Amazon Elastic Compute Cloud User Guide*.

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

These settings apply to the principal specified in the request. They do
not apply to the principal that makes the request.

### Usage

    ec2_describe_identity_id_format(PrincipalArn, Resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_identity_id_format_:_PrincipalArn">PrincipalArn</code></td>
<td><p>[required] The ARN of the principal, which can be an IAM role,
IAM user, or the root user.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_identity_id_format_:_Resource">Resource</code></td>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$describe_identity_id_format(
      PrincipalArn = "string",
      Resource = "string"
    )
