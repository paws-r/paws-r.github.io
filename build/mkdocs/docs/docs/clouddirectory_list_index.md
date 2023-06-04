<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists objects attached to the specified index

### Description

Lists objects attached to the specified index.

### Usage

    clouddirectory_list_index(DirectoryArn, RangesOnIndexedValues,
      IndexReference, MaxResults, NextToken, ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_index_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory that the index exists
in.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_index_:_RangesOnIndexedValues">RangesOnIndexedValues</code></td>
<td><p>Specifies the ranges of indexed values that you want to
query.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_index_:_IndexReference">IndexReference</code></td>
<td><p>[required] The reference to the index to list.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_index_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects in a single page to retrieve from
the index during a request. For more information, see <a
href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon
Cloud Directory Limits</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_index_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_index_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>The consistency level to execute the request at.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexAttachments = list(
        list(
          IndexedAttributes = list(
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
          ),
          ObjectIdentifier = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_index(
      DirectoryArn = "string",
      RangesOnIndexedValues = list(
        list(
          AttributeKey = list(
            SchemaArn = "string",
            FacetName = "string",
            Name = "string"
          ),
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
      IndexReference = list(
        Selector = "string"
      ),
      MaxResults = 123,
      NextToken = "string",
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
