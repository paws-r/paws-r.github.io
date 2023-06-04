<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_attach_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an existing object to another object

### Description

Attaches an existing object to another object. An object can be accessed
in two ways:

1.  Using the path

2.  Using `ObjectIdentifier`

### Usage

    clouddirectory_attach_object(DirectoryArn, ParentReference,
      ChildReference, LinkName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_attach_object_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) that is associated with the
Directory where both objects reside. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_attach_object_:_ParentReference">ParentReference</code></td>
<td><p>[required] The parent object reference.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_attach_object_:_ChildReference">ChildReference</code></td>
<td><p>[required] The child object reference to be attached to the
object.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_attach_object_:_LinkName">LinkName</code></td>
<td><p>[required] The link name with which the child object is attached
to the parent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttachedObjectIdentifier = "string"
    )

### Request syntax

    svc$attach_object(
      DirectoryArn = "string",
      ParentReference = list(
        Selector = "string"
      ),
      ChildReference = list(
        Selector = "string"
      ),
      LinkName = "string"
    )
