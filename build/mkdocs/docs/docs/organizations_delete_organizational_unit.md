<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_delete_organizational_unit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an organizational unit (OU) from a root or another OU

### Description

Deletes an organizational unit (OU) from a root or another OU. You must
first remove all accounts and child OUs from the OU that you want to
delete.

This operation can be called only from the organization's management
account.

### Usage

    organizations_delete_organizational_unit(OrganizationalUnitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_delete_organizational_unit_:_OrganizationalUnitId">OrganizationalUnitId</code></td>
<td><p>[required] The unique identifier (ID) of the organizational unit
that you want to delete. You can get the ID from the
<code>list_organizational_units_for_parent</code> operation.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for an organizational unit ID string requires "ou-" followed by from 4
to 32 lowercase letters or digits (the ID of the root that contains the
OU). This string is followed by a second "-" dash and from 8 to 32
additional lowercase letters or digits.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_organizational_unit(
      OrganizationalUnitId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to delete an OU. The example assumes
    # that you previously removed all accounts and other OUs from the OU:
    # 
    # 
    svc$delete_organizational_unit(
      OrganizationalUnitId = "ou-examplerootid111-exampleouid111"
    )

    ## End(Not run)
