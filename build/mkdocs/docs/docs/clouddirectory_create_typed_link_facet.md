<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_create_typed_link_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a TypedLinkFacet

### Description

Creates a TypedLinkFacet. For more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_create_typed_link_facet(SchemaArn, Facet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_create_typed_link_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_create_typed_link_facet_:_Facet">Facet</code></td>
<td><p>[required] Facet structure that is associated with the typed link
facet.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_typed_link_facet(
      SchemaArn = "string",
      Facet = list(
        Name = "string",
        Attributes = list(
          list(
            Name = "string",
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
            ),
            RequiredBehavior = "REQUIRED_ALWAYS"|"NOT_REQUIRED"
          )
        ),
        IdentityAttributeOrder = list(
          "string"
        )
      )
    )
