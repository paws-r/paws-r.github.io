<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_attached_indices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists indices attached to the specified object

### Description

Lists indices attached to the specified object.

### Usage

    clouddirectory_list_attached_indices(DirectoryArn, TargetReference,
      NextToken, MaxResults, ConsistencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_attached_indices_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_attached_indices_:_TargetReference">TargetReference</code></td>
<td><p>[required] A reference to the object that has indices
attached.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_attached_indices_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_attached_indices_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_attached_indices_:_ConsistencyLevel">ConsistencyLevel</code></td>
<td><p>The consistency level to use for this operation.</p></td>
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

    svc$list_attached_indices(
      DirectoryArn = "string",
      TargetReference = list(
        Selector = "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      ConsistencyLevel = "SERIALIZABLE"|"EVENTUAL"
    )
