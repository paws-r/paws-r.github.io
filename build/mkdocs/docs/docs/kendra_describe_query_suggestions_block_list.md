<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_query_suggestions_block_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a block list used for query suggestions for an index

### Description

Gets information about a block list used for query suggestions for an
index.

This is used to check the current settings that are applied to a block
list.

`describe_query_suggestions_block_list` is currently not supported in
the Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_describe_query_suggestions_block_list(IndexId, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_describe_query_suggestions_block_list_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the block
list.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_describe_query_suggestions_block_list_:_Id">Id</code></td>
<td><p>[required] The identifier of the block list you want to get
information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexId = "string",
      Id = "string",
      Name = "string",
      Description = "string",
      Status = "ACTIVE"|"CREATING"|"DELETING"|"UPDATING"|"ACTIVE_BUT_UPDATE_FAILED"|"FAILED",
      ErrorMessage = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      SourceS3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      ItemCount = 123,
      FileSizeBytes = 123,
      RoleArn = "string"
    )

### Request syntax

    svc$describe_query_suggestions_block_list(
      IndexId = "string",
      Id = "string"
    )
