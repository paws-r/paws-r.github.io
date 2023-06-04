<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_update_organizational_unit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Renames the specified organizational unit (OU)

### Description

Renames the specified organizational unit (OU). The ID and ARN don't
change. The child OUs and accounts remain in place, and any attached
policies of the OU remain attached.

This operation can be called only from the organization's management
account.

### Usage

    organizations_update_organizational_unit(OrganizationalUnitId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_update_organizational_unit_:_OrganizationalUnitId">OrganizationalUnitId</code></td>
<td><p>[required] The unique identifier (ID) of the OU that you want to
rename. You can get the ID from the
<code>list_organizational_units_for_parent</code> operation.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for an organizational unit ID string requires "ou-" followed by from 4
to 32 lowercase letters or digits (the ID of the root that contains the
OU). This string is followed by a second "-" dash and from 8 to 32
additional lowercase letters or digits.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_update_organizational_unit_:_Name">Name</code></td>
<td><p>The new name that you want to assign to the OU.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
that is used to validate this parameter is a string of any of the
characters in the ASCII character range.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationalUnit = list(
        Id = "string",
        Arn = "string",
        Name = "string"
      )
    )

### Request syntax

    svc$update_organizational_unit(
      OrganizationalUnitId = "string",
      Name = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to rename an OU. The output confirms the
    # new name:/n/n
    svc$update_organizational_unit(
      Name = "AccountingOU",
      OrganizationalUnitId = "ou-examplerootid111-exampleouid111"
    )

    ## End(Not run)
