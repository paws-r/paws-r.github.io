<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove one or more specified aliases from a set of aliases for a given user

### Description

Remove one or more specified aliases from a set of aliases for a given
user.

### Usage

    workmail_delete_alias(OrganizationId, EntityId, Alias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_alias_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
user exists.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_delete_alias_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier for the member (user or group) from
which to have the aliases removed.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_delete_alias_:_Alias">Alias</code></td>
<td><p>[required] The aliases to be removed from the user's set of
aliases. Duplicate entries in the list are collapsed into single entries
(the list is transformed into a set).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_alias(
      OrganizationId = "string",
      EntityId = "string",
      Alias = "string"
    )
