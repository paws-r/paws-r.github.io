<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an alias to the set of a given member (user or group) of WorkMail

### Description

Adds an alias to the set of a given member (user or group) of WorkMail.

### Usage

    workmail_create_alias(OrganizationId, EntityId, Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_alias_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization under which the member (user or
group) exists.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_create_alias_:_EntityId">EntityId</code></td>
<td><p>[required] The member (user or group) to which this alias is
added.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_create_alias_:_Alias">Alias</code></td>
<td><p>[required] The alias to add to the member set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_alias(
      OrganizationId = "string",
      EntityId = "string",
      Alias = "string"
    )
