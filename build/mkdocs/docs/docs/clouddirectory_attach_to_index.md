<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_attach_to_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches the specified object to the specified index

### Description

Attaches the specified object to the specified index.

### Usage

    clouddirectory_attach_to_index(DirectoryArn, IndexReference,
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
id="clouddirectory_attach_to_index_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the directory where
the object and index exist.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_attach_to_index_:_IndexReference">IndexReference</code></td>
<td><p>[required] A reference to the index that you are attaching the
object to.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_attach_to_index_:_TargetReference">TargetReference</code></td>
<td><p>[required] A reference to the object that you are attaching to
the index.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttachedObjectIdentifier = "string"
    )

### Request syntax

    svc$attach_to_index(
      DirectoryArn = "string",
      IndexReference = list(
        Selector = "string"
      ),
      TargetReference = list(
        Selector = "string"
      )
    )
