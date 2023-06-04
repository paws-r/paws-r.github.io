<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_get_link_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves attributes that are associated with a typed link

### Description

Retrieves attributes that are associated with a typed link.

### Usage

    clouddirectory_get_link_attributes(DirectoryArn, TypedLinkSpecifier,
      AttributeNames, ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_get_link_attributes_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the Directory where the typed link resides. For more information, see
arns or <a
href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed
Links</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_get_link_attributes_:_TypedLinkSpecifier">TypedLinkSpecifier</code></td>
<td><p>[required] Allows a typed link specifier to be accepted as
input.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_get_link_attributes_:_AttributeNames">AttributeNames</code></td>
<td><p>[required] A list of attribute names whose values will be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_get_link_attributes_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>The consistency level at which to retrieve the attributes on a
typed link.</p></td>
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
      )
    )

### Request syntax

    svc$get_link_attributes(
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
      AttributeNames = list(
        "string"
      ),
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
