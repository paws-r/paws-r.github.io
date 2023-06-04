<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_trunk_interface_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API action is currently in limited preview only

### Description

This API action is currently in **limited preview only**. If you are
interested in using this feature, contact your account manager.

Describes one or more network interface trunk associations.

### Usage

    ec2_describe_trunk_interface_associations(AssociationIds, DryRun,
      Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_trunk_interface_associations_:_AssociationIds">AssociationIds</code></td>
<td><p>The IDs of the associations.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_trunk_interface_associations_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_trunk_interface_associations_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>gre-key</code> - The ID of a trunk interface
association.</p></li>
<li><p><code>interface-protocol</code> - The interface protocol. Valid
values are <code>VLAN</code> and <code>GRE</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_trunk_interface_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_trunk_interface_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InterfaceAssociations = list(
        list(
          AssociationId = "string",
          BranchInterfaceId = "string",
          TrunkInterfaceId = "string",
          InterfaceProtocol = "VLAN"|"GRE",
          VlanId = 123,
          GreKey = 123,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_trunk_interface_associations(
      AssociationIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
