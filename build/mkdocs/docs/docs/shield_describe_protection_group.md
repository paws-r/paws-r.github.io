<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_protection_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the specification for the specified protection group

### Description

Returns the specification for the specified protection group.

### Usage

    shield_describe_protection_group(ProtectionGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_describe_protection_group_:_ProtectionGroupId">ProtectionGroupId</code></td>
<td><p>[required] The name of the protection group. You use this to
identify the protection group in lists and to manage the protection
group, for example to update, delete, or describe it.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProtectionGroup = list(
        ProtectionGroupId = "string",
        Aggregation = "SUM"|"MEAN"|"MAX",
        Pattern = "ALL"|"ARBITRARY"|"BY_RESOURCE_TYPE",
        ResourceType = "CLOUDFRONT_DISTRIBUTION"|"ROUTE_53_HOSTED_ZONE"|"ELASTIC_IP_ALLOCATION"|"CLASSIC_LOAD_BALANCER"|"APPLICATION_LOAD_BALANCER"|"GLOBAL_ACCELERATOR",
        Members = list(
          "string"
        ),
        ProtectionGroupArn = "string"
      )
    )

### Request syntax

    svc$describe_protection_group(
      ProtectionGroupId = "string"
    )
