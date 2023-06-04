<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_query_suggestions_block_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a block list used for query suggestions for an index

### Description

Updates a block list used for query suggestions for an index.

Updates to a block list might not take effect right away. Amazon Kendra
needs to refresh the entire suggestions list to apply any updates to the
block list. Other changes not related to the block list apply
immediately.

If a block list is updating, then you need to wait for the first update
to finish before submitting another update.

Amazon Kendra supports partial updates, so you only need to provide the
fields you want to update.

`update_query_suggestions_block_list` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_update_query_suggestions_block_list(IndexId, Id, Name,
      Description, SourceS3Path, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_block_list_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the block
list.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_query_suggestions_block_list_:_Id">Id</code></td>
<td><p>[required] The identifier of the block list you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_block_list_:_Name">Name</code></td>
<td><p>A new name for the block list.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_query_suggestions_block_list_:_Description">Description</code></td>
<td><p>A new description for the block list.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_query_suggestions_block_list_:_SourceS3Path">SourceS3Path</code></td>
<td><p>The S3 path where your block list text file sits in S3.</p>
<p>If you update your block list and provide the same path to the block
list text file in S3, then Amazon Kendra reloads the file to refresh the
block list. Amazon Kendra does not automatically refresh your block
list. You need to call the
<code>update_query_suggestions_block_list</code> API to refresh you
block list.</p>
<p>If you update your block list, then Amazon Kendra asynchronously
refreshes all query suggestions with the latest content in the S3 file.
This means changes might not take effect immediately.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_query_suggestions_block_list_:_RoleArn">RoleArn</code></td>
<td><p>The IAM (Identity and Access Management) role used to access the
block list text file in S3.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_query_suggestions_block_list(
      IndexId = "string",
      Id = "string",
      Name = "string",
      Description = "string",
      SourceS3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      RoleArn = "string"
    )
