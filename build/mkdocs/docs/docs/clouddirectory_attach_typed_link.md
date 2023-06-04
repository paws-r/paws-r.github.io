<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_attach_typed_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a typed link to a specified source and target object

### Description

Attaches a typed link to a specified source and target object. For more
information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_attach_typed_link(DirectoryArn, SourceObjectReference,
      TargetObjectReference, TypedLinkFacet, Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_attach_typed_link_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the directory where
you want to attach the typed link.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_attach_typed_link_:_SourceObjectReference">SourceObjectReference</code></td>
<td><p>[required] Identifies the source object that the typed link will
attach to.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_attach_typed_link_:_TargetObjectReference">TargetObjectReference</code></td>
<td><p>[required] Identifies the target object that the typed link will
attach to.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_attach_typed_link_:_TypedLinkFacet">TypedLinkFacet</code></td>
<td><p>[required] Identifies the typed link facet that is associated
with the typed link.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_attach_typed_link_:_Attributes">Attributes</code></td>
<td><p>[required] A set of attributes that are associated with the typed
link.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$attach_typed_link(
      DirectoryArn = "string",
      SourceObjectReference = list(
        Selector = "string"
      ),
      TargetObjectReference = list(
        Selector = "string"
      ),
      TypedLinkFacet = list(
        SchemaArn = "string",
        TypedLinkName = "string"
      ),
      Attributes = list(
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
    )
