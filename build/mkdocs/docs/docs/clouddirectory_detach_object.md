<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_detach_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a given object from the parent object

### Description

Detaches a given object from the parent object. The object that is to be
detached from the parent is specified by the link name.

### Usage

    clouddirectory_detach_object(DirectoryArn, ParentReference, LinkName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_detach_object_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where objects reside. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_detach_object_:_ParentReference">ParentReference</code></td>
<td><p>[required] The parent reference from which the object with the
specified link name is detached.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_detach_object_:_LinkName">LinkName</code></td>
<td><p>[required] The link name associated with the object that needs to
be detached.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DetachedObjectIdentifier = "string"
    )

### Request syntax

    svc$detach_object(
      DirectoryArn = "string",
      ParentReference = list(
        Selector = "string"
      ),
      LinkName = "string"
    )
