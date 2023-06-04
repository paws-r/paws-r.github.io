<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_profile_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an object associated with a profile of a given ProfileObjectType

### Description

Removes an object associated with a profile of a given
ProfileObjectType.

### Usage

    customerprofiles_delete_profile_object(ProfileId,
      ProfileObjectUniqueKey, ObjectTypeName, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_profile_object_:_ProfileId">ProfileId</code></td>
<td><p>[required] The unique identifier of a customer profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_profile_object_:_ProfileObjectUniqueKey">ProfileObjectUniqueKey</code></td>
<td><p>[required] The unique identifier of the profile object generated
by the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_delete_profile_object_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_profile_object_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$delete_profile_object(
      ProfileId = "string",
      ProfileObjectUniqueKey = "string",
      ObjectTypeName = "string",
      DomainName = "string"
    )
