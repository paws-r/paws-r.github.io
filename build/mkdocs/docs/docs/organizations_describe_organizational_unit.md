<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_organizational_unit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an organizational unit (OU)

### Description

Retrieves information about an organizational unit (OU).

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_describe_organizational_unit(OrganizationalUnitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_describe_organizational_unit_:_OrganizationalUnitId">OrganizationalUnitId</code></td>
<td><p>[required] The unique identifier (ID) of the organizational unit
that you want details about. You can get the ID from the
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

A list with the following syntax:

    list(
      OrganizationalUnit = list(
        Id = "string",
        Arn = "string",
        Name = "string"
      )
    )

### Request syntax

    svc$describe_organizational_unit(
      OrganizationalUnitId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to request details about an OU:/n/n
    svc$describe_organizational_unit(
      OrganizationalUnitId = "ou-examplerootid111-exampleouid111"
    )

    ## End(Not run)
