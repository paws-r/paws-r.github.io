<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_detach_from_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches the specified object from the specified index

### Description

Detaches the specified object from the specified index.

### Usage

    clouddirectory_detach_from_index(DirectoryArn, IndexReference,
      TargetReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_detach_from_index_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the directory the
index and object exist in.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_detach_from_index_:_IndexReference">IndexReference</code></td>
<td><p>[required] A reference to the index object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_detach_from_index_:_TargetReference">TargetReference</code></td>
<td><p>[required] A reference to the object being detached from the
index.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DetachedObjectIdentifier = "string"
    )

### Request syntax

    svc$detach_from_index(
      DirectoryArn = "string",
      IndexReference = list(
        Selector = "string"
      ),
      TargetReference = list(
        Selector = "string"
      )
    )
