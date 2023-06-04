<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_query_suggestions_block_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a block list to exlcude certain queries from suggestions

### Description

Creates a block list to exlcude certain queries from suggestions.

Any query that contains words or phrases specified in the block list is
blocked or filtered out from being shown as a suggestion.

You need to provide the file location of your block list text file in
your S3 bucket. In your text file, enter each block word or phrase on a
separate line.

For information on the current quota limits for block lists, see [Quotas
for Amazon
Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

`create_query_suggestions_block_list` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

For an example of creating a block list for query suggestions using the
Python SDK, see [Query suggestions block
list](https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist).

### Usage

    kendra_create_query_suggestions_block_list(IndexId, Name, Description,
      SourceS3Path, ClientToken, RoleArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_create_query_suggestions_block_list_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index you want to create a query
suggestions block list for.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_query_suggestions_block_list_:_Name">Name</code></td>
<td><p>[required] A name for the block list.</p>
<p>For example, the name 'offensive-words', which includes all offensive
words that could appear in user queries and need to be blocked from
suggestions.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_query_suggestions_block_list_:_Description">Description</code></td>
<td><p>A description for the block list.</p>
<p>For example, the description "List of all offensive words that can
appear in user queries and need to be blocked from
suggestions."</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_query_suggestions_block_list_:_SourceS3Path">SourceS3Path</code></td>
<td><p>[required] The S3 path to your block list text file in your S3
bucket.</p>
<p>Each block word or phrase should be on a separate line in a text
file.</p>
<p>For information on the current quota limits for block lists, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
for Amazon Kendra</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_query_suggestions_block_list_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create a
query suggestions block list.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_query_suggestions_block_list_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role with
permission to access your S3 bucket that contains the block list text
file. For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_query_suggestions_block_list_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs that identify or categorize the block
list. Tag keys and values can consist of Unicode letters, digits, white
space, and any of the following symbols: _ . : / = + - @.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_query_suggestions_block_list(
      IndexId = "string",
      Name = "string",
      Description = "string",
      SourceS3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      ClientToken = "string",
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
