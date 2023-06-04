<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_create_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an index object

### Description

Creates an index object. See [Indexing and
search](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html)
for more information.

### Usage

    clouddirectory_create_index(DirectoryArn, OrderedIndexedAttributeList,
      IsUnique, ParentReference, LinkName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_create_index_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory where the index should be
created.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_index_:_OrderedIndexedAttributeList">OrderedIndexedAttributeList</code></td>
<td><p>[required] Specifies the attributes that should be indexed on.
Currently only a single attribute is supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_create_index_:_IsUnique">IsUnique</code></td>
<td><p>[required] Indicates whether the attribute that is being indexed
has unique values or not.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_index_:_ParentReference">ParentReference</code></td>
<td><p>A reference to the parent object that contains the index
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_create_index_:_LinkName">LinkName</code></td>
<td><p>The name of the link between the parent object and the index
object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectIdentifier = "string"
    )

### Request syntax

    svc$create_index(
      DirectoryArn = "string",
      OrderedIndexedAttributeList = list(
        list(
          SchemaArn = "string",
          FacetName = "string",
          Name = "string"
        )
      ),
      IsUnique = TRUE|FALSE,
      ParentReference = list(
        Selector = "string"
      ),
      LinkName = "string"
    )
