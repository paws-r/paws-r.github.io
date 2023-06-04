<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_profile_object_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a ProfileObjectType from a specific domain as well as removes all the ProfileObjects of that type

### Description

Removes a ProfileObjectType from a specific domain as well as removes
all the ProfileObjects of that type. It also disables integrations from
this specific ProfileObjectType. In addition, it scrubs all of the
fields of the standard profile that were populated from this
ProfileObjectType.

### Usage

    customerprofiles_delete_profile_object_type(DomainName, ObjectTypeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_profile_object_type_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_profile_object_type_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$delete_profile_object_type(
      DomainName = "string",
      ObjectTypeName = "string"
    )
