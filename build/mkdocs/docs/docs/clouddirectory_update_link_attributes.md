<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_update_link_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a given typed link’s attributes

### Description

Updates a given typed link’s attributes. Attributes to be updated must
not contribute to the typed link’s identity, as defined by its
`IdentityAttributeOrder`.

### Usage

    clouddirectory_update_link_attributes(DirectoryArn, TypedLinkSpecifier,
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
id="clouddirectory_update_link_attributes_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the updated typed link resides. For more
information, see arns or <a
href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed
Links</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_update_link_attributes_:_TypedLinkSpecifier">TypedLinkSpecifier</code></td>
<td><p>[required] Allows a typed link specifier to be accepted as
input.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_update_link_attributes_:_AttributeUpdates">AttributeUpdates</code></td>
<td><p>[required] The attributes update structure.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_link_attributes(
      DirectoryArn = "string",
      TypedLinkSpecifier = list(
        TypedLinkFacet = list(
          SchemaArn = "string",
          TypedLinkName = "string"
        ),
        SourceObjectReference = list(
          Selector = "string"
        ),
        TargetObjectReference = list(
          Selector = "string"
        ),
        IdentityAttributeValues = list(
          list(
            AttributeName = "string",
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
        )
      ),
      AttributeUpdates = list(
        list(
          AttributeKey = list(
            SchemaArn = "string",
            FacetName = "string",
            Name = "string"
          ),
          AttributeAction = list(
            AttributeActionType = "CREATE_OR_UPDATE"|"DELETE",
            AttributeUpdateValue = list(
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
