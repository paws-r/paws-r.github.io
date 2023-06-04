<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_object_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns policies attached to an object in pagination fashion

### Description

Returns policies attached to an object in pagination fashion.

### Usage

    clouddirectory_list_object_policies(DirectoryArn, ObjectReference,
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
id="clouddirectory_list_object_policies_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where objects reside. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_policies_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] Reference that identifies the object for which
policies will be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_policies_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_policies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_policies_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttachedPolicyIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_object_policies(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
