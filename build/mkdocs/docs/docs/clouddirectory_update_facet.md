<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_update_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Does the following:

### Description

Does the following:

1.  Adds new `Attributes`, `Rules`, or `ObjectTypes`.

2.  Updates existing `Attributes`, `Rules`, or `ObjectTypes`.

3.  Deletes existing `Attributes`, `Rules`, or `ObjectTypes`.

### Usage

    clouddirectory_update_facet(SchemaArn, Name, AttributeUpdates,
      ObjectType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_update_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Facet. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_update_facet_:_Name">Name</code></td>
<td><p>[required] The name of the facet.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_update_facet_:_AttributeUpdates">AttributeUpdates</code></td>
<td><p>List of attributes that need to be updated in a given schema
Facet. Each attribute is followed by <code>AttributeAction</code>, which
specifies the type of update operation to perform.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_update_facet_:_ObjectType">ObjectType</code></td>
<td><p>The object type that is associated with the facet. See
CreateFacetRequest$ObjectType for more details.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_facet(
      SchemaArn = "string",
      Name = "string",
      AttributeUpdates = list(
        list(
          Attribute = list(
            Name = "string",
            AttributeDefinition = list(
              Type = "STRING"|"BINARY"|"BOOLEAN"|"NUMBER"|"DATETIME"|"VARIANT",
              DefaultValue = list(
                StringValue = "string",
                BinaryValue = raw,
                BooleanValue = TRUE|FALSE,
                NumberValue = "string",
                DatetimeValue = as.POSIXct(
                  "2015-01-01"
                )
              ),
              IsImmutable = TRUE|FALSE,
              Rules = list(
                list(
                  Type = "BINARY_LENGTH"|"NUMBER_COMPARISON"|"STRING_FROM_SET"|"STRING_LENGTH",
                  Parameters = list(
                    "string"
                  )
                )
              )
            ),
            AttributeReference = list(
              TargetFacetName = "string",
              TargetAttributeName = "string"
            ),
            RequiredBehavior = "REQUIRED_ALWAYS"|"NOT_REQUIRED"
          ),
          Action = "CREATE_OR_UPDATE"|"DELETE"
        )
      ),
      ObjectType = "NODE"|"LEAF_NODE"|"POLICY"|"INDEX"
    )
