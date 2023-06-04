<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_update_typed_link_facet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a TypedLinkFacet

### Description

Updates a TypedLinkFacet. For more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_update_typed_link_facet(SchemaArn, Name,
      AttributeUpdates, IdentityAttributeOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_update_typed_link_facet_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_update_typed_link_facet_:_Name">Name</code></td>
<td><p>[required] The unique name of the typed link facet.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_update_typed_link_facet_:_AttributeUpdates">AttributeUpdates</code></td>
<td><p>[required] Attributes update structure.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_update_typed_link_facet_:_IdentityAttributeOrder">IdentityAttributeOrder</code></td>
<td><p>[required] The order of identity attributes for the facet, from
most significant to least significant. The ability to filter typed links
considers the order that the attributes are defined on the typed link
facet. When providing ranges to a typed link selection, any inexact
ranges must be specified at the end. Any attributes that do not have a
range specified are presumed to match the entire range. Filters are
interpreted in the order of the attributes on the typed link facet, not
the order in which they are supplied to any API calls. For more
information about identity attributes, see <a
href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed
Links</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_typed_link_facet(
      SchemaArn = "string",
      Name = "string",
      AttributeUpdates = list(
        list(
          Attribute = list(
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
          ),
          Action = "CREATE_OR_UPDATE"|"DELETE"
        )
      ),
      IdentityAttributeOrder = list(
        "string"
      )
    )
