<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_update_object_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a given object's attributes

### Description

Updates a given object's attributes.

### Usage

    clouddirectory_update_object_attributes(DirectoryArn, ObjectReference,
      AttributeUpdates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_update_object_attributes_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the object resides. For more information, see
arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_update_object_attributes_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] The reference that identifies the object.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_update_object_attributes_:_AttributeUpdates">AttributeUpdates</code></td>
<td><p>[required] The attributes update structure.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectIdentifier = "string"
    )

### Request syntax

    svc$update_object_attributes(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      AttributeUpdates = list(
        list(
          ObjectAttributeKey = list(
            SchemaArn = "string",
            FacetName = "string",
            Name = "string"
          ),
          ObjectAttributeAction = list(
            ObjectAttributeActionType = "CREATE_OR_UPDATE"|"DELETE",
            ObjectAttributeUpdateValue = list(
              StringValue = "string",
              BinaryValue = raw,
              BooleanValue = TRUE|FALSE,
              NumberValue = "string",
              DatetimeValue = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )
