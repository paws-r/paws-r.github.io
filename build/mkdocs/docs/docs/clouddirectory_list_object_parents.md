<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_object_parents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists parent objects that are associated with a given object in pagination fashion

### Description

Lists parent objects that are associated with a given object in
pagination fashion.

### Usage

    clouddirectory_list_object_parents(DirectoryArn, ObjectReference,
      NextToken, MaxResults, ConsistencyLevel, IncludeAllLinksToEachParent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_object_parents_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_parents_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] The reference that identifies the object for which
parent objects are being listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_parents_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_parents_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_parents_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_parents_:_IncludeAllLinksToEachParent">IncludeAllLinksToEachParent</code></td>
<td><p>When set to True, returns all
ListObjectParentsResponse$ParentLinks. There could be multiple links
between a parent-child pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parents = list(
        "string"
      ),
      NextToken = "string",
      ParentLinks = list(
        list(
          ObjectIdentifier = "string",
          LinkName = "string"
        )
      )
    )

### Request syntax

    svc$list_object_parents(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL",
      IncludeAllLinksToEachParent = TRUE|FALSE
    )
