<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_object_children</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of child objects that are associated with a given object

### Description

Returns a paginated list of child objects that are associated with a
given object.

### Usage

    clouddirectory_list_object_children(DirectoryArn, ObjectReference,
      NextToken, MaxResults, ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_object_children_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_children_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] The reference that identifies the object for which
child objects are being listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_children_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_children_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_children_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Children = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_object_children(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
