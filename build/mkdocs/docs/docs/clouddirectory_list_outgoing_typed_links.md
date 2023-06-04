<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_outgoing_typed_links</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object

### Description

Returns a paginated list of all the outgoing TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_list_outgoing_typed_links(DirectoryArn, ObjectReference,
      FilterAttributeRanges, FilterTypedLink, NextToken, MaxResults,
      ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the directory where
you want to list the typed links.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_ObjectReference">ObjectReference</code></td>
<td><p>[required] A reference that identifies the object whose
attributes will be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_FilterAttributeRanges">FilterAttributeRanges</code></td>
<td><p>Provides range filters for multiple attributes. When providing
ranges to typed link selection, any inexact ranges must be specified at
the end. Any attributes that do not have a range specified are presumed
to match the entire range.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_FilterTypedLink">FilterTypedLink</code></td>
<td><p>Filters are interpreted in the order of the attributes defined on
the typed link facet, not the order they are supplied to any API
calls.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_outgoing_typed_links_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>The consistency level to execute the request at.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TypedLinkSpecifiers = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_outgoing_typed_links(
      DirectoryArn = "string",
      ObjectReference = list(
        Selector = "string"
      ),
      FilterAttributeRanges = list(
        list(
          AttributeName = "string",
          Range = list(
            StartMode = "FIRST"|"LAST"|"LAST_BEFORE_MISSING_VALUES"|"INCLUSIVE"|"EXCLUSIVE",
            StartValue = list(
              StringValue = "string",
              BinaryValue = raw,
              BooleanValue = TRUE|FALSE,
              NumberValue = "string",
              DatetimeValue = as.POSIXct(
                "2015-01-01"
              )
            ),
            EndMode = "FIRST"|"LAST"|"LAST_BEFORE_MISSING_VALUES"|"INCLUSIVE"|"EXCLUSIVE",
            EndValue = list(
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
      FilterTypedLink = list(
        SchemaArn = "string",
        TypedLinkName = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
