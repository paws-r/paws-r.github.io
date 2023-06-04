<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_object_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all attributes that are associated with an object

### Description

Lists all attributes that are associated with an object.

### Usage

    clouddirectory_list_object_attributes(DirectoryArn, ObjectReference,
      NextToken, MaxResults, ConsistencyLevel, FacetFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_object_attributes_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_attributes_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] The reference that identifies the object whose
attributes will be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_attributes_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_attributes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be retrieved in a single call.
This is an approximate number.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_object_attributes_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_object_attributes_:_FacetFilter">FacetFilter</code></td>
<td><p>Used to filter the list of object attributes that are associated
with a certain facet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        list(
          Key = list(
            SchemaArn = "string",
            FacetName = "string",
            Name = "string"
          ),
          Value = list(
            StringValue = "string",
            BinaryValue = raw,
            BooleanValue = TRUE|FALSE,
            NumberValue = "string",
            DatetimeValue = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_object_attributes(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL",
      FacetFilter = list(
        SchemaArn = "string",
        FacetName = "string"
      )
    )
