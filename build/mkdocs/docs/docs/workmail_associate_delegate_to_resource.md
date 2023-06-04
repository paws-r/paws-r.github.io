<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_associate_delegate_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a member (user or group) to the resource's set of delegates

### Description

Adds a member (user or group) to the resource's set of delegates.

### Usage

    workmail_associate_delegate_to_resource(OrganizationId, ResourceId,
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
id="workmail_associate_delegate_to_resource_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization under which the resource
exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_associate_delegate_to_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource for which members (users or groups) are
associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_associate_delegate_to_resource_:_EntityId">EntityId</code></td>
<td><p>[required] The member (user or group) to associate to the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_delegate_to_resource(
      OrganizationId = "string",
      ResourceId = "string",
      EntityId = "string"
    )
