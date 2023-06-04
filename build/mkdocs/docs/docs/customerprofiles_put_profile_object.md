<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_put_profile_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds additional objects to customer profiles of a given ObjectType

### Description

Adds additional objects to customer profiles of a given ObjectType.

When adding a specific profile object, like a Contact Record, an
inferred profile can get created if it is not mapped to an existing
profile. The resulting profile will only have a phone number populated
in the standard ProfileObject. Any additional Contact Records with the
same phone number will be mapped to the same inferred profile.

When a ProfileObject is created and if a ProfileObjectType already
exists for the ProfileObject, it will provide data to a standard profile
depending on the ProfileObjectType definition.

PutProfileObject needs an ObjectType, which can be created using
PutProfileObjectType.

### Usage

    customerprofiles_put_profile_object(ObjectTypeName, Object, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_profile_object_:_Object">Object</code></td>
<td><p>[required] A string that is serialized from a JSON
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProfileObjectUniqueKey = "string"
    )

### Request syntax

    svc$put_profile_object(
      ObjectTypeName = "string",
      Object = "string",
      DomainName = "string"
    )
