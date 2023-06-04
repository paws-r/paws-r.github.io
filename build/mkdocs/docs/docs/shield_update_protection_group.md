<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_update_protection_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing protection group

### Description

Updates an existing protection group. A protection group is a grouping
of protected resources so they can be handled as a collective. This
resource grouping improves the accuracy of detection and reduces false
positives.

### Usage

    shield_update_protection_group(ProtectionGroupId, Aggregation, Pattern,
      ResourceType, Members)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_update_protection_group_:_ProtectionGroupId">ProtectionGroupId</code></td>
<td><p>[required] The name of the protection group. You use this to
identify the protection group in lists and to manage the protection
group, for example to update, delete, or describe it.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_update_protection_group_:_Aggregation">Aggregation</code></td>
<td><p>[required] Defines how Shield combines resource data for the
group in order to detect, mitigate, and report events.</p>
<ul>
<li><p>Sum - Use the total traffic across the group. This is a good
choice for most cases. Examples include Elastic IP addresses for EC2
instances that scale manually or automatically.</p></li>
<li><p>Mean - Use the average of the traffic across the group. This is a
good choice for resources that share traffic uniformly. Examples include
accelerators and load balancers.</p></li>
<li><p>Max - Use the highest traffic from each resource. This is useful
for resources that don't share traffic and for resources that share that
traffic in a non-uniform way. Examples include Amazon CloudFront
distributions and origin resources for CloudFront
distributions.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="shield_update_protection_group_:_Pattern">Pattern</code></td>
<td><p>[required] The criteria to use to choose the protected resources
for inclusion in the group. You can include all resources that have
protections, provide a list of resource Amazon Resource Names (ARNs), or
include all resources of a specified resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_update_protection_group_:_ResourceType">ResourceType</code></td>
<td><p>The resource type to include in the protection group. All
protected resources of this type are included in the protection group.
You must set this when you set <code>Pattern</code> to
<code>BY_RESOURCE_TYPE</code> and you must not set it for any other
<code>Pattern</code> setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="shield_update_protection_group_:_Members">Members</code></td>
<td><p>The Amazon Resource Names (ARNs) of the resources to include in
the protection group. You must set this when you set
<code>Pattern</code> to <code>ARBITRARY</code> and you must not set it
for any other <code>Pattern</code> setting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_protection_group(
      ProtectionGroupId = "string",
      Aggregation = "SUM"|"MEAN"|"MAX",
      Pattern = "ALL"|"ARBITRARY"|"BY_RESOURCE_TYPE",
      ResourceType = "CLOUDFRONT_DISTRIBUTION"|"ROUTE_53_HOSTED_ZONE"|"ELASTIC_IP_ALLOCATION"|"CLASSIC_LOAD_BALANCER"|"APPLICATION_LOAD_BALANCER"|"GLOBAL_ACCELERATOR",
      Members = list(
        "string"
      )
    )
