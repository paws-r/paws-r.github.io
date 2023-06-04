<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_delete_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an object and its associated attributes

### Description

Deletes an object and its associated attributes. Only objects with no
children and no parents can be deleted. The maximum number of attributes
that can be deleted during an object deletion is 30. For more
information, see [Amazon Cloud Directory
Limits](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).

### Usage

    clouddirectory_delete_object(DirectoryArn, ObjectReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_delete_object_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_delete_object_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] A reference that identifies the object.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_object(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      )
    )
