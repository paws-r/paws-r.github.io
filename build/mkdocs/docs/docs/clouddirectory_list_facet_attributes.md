<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_facet_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves attributes attached to the facet

### Description

Retrieves attributes attached to the facet.

### Usage

    clouddirectory_list_facet_attributes(SchemaArn, Name, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_facet_attributes_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The ARN of the schema where the facet
resides.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_facet_attributes_:_Name">Name</code></td>
<td><p>[required] The name of the facet whose attributes will be
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_facet_attributes_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_facet_attributes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        list(
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
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_facet_attributes(
      SchemaArn = "string",
      Name = "string",
      NextToken = "string",
      MaxResults = 123
    )
