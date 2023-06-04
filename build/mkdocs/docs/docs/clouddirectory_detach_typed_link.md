<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_detach_typed_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a typed link from a specified source and target object

### Description

Detaches a typed link from a specified source and target object. For
more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_detach_typed_link(DirectoryArn, TypedLinkSpecifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_detach_typed_link_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the directory where
you want to detach the typed link.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_detach_typed_link_:_TypedLinkSpecifier">TypedLinkSpecifier</code></td>
<td><p>[required] Used to accept a typed link specifier as
input.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$detach_typed_link(
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
      )
    )
