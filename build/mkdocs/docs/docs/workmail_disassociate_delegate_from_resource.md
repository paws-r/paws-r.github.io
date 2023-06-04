<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_disassociate_delegate_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a member from the resource's set of delegates

### Description

Removes a member from the resource's set of delegates.

### Usage

    workmail_disassociate_delegate_from_resource(OrganizationId, ResourceId,
      EntityId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_disassociate_delegate_from_resource_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
resource exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_disassociate_delegate_from_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the resource from which delegates'
set members are removed.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_disassociate_delegate_from_resource_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier for the member (user, group) to be
removed from the resource's delegates.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_delegate_from_resource(
      OrganizationId = "string",
      ResourceId = "string",
      EntityId = "string"
    )
