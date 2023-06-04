<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_thesaurus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a thesaurus for an index

### Description

Creates a thesaurus for an index. The thesaurus contains a list of
synonyms in Solr format.

For an example of adding a thesaurus file to an index, see [Adding
custom synonyms to an
index](https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html).

### Usage

    kendra_create_thesaurus(IndexId, Name, Description, RoleArn, Tags,
      SourceS3Path, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_create_thesaurus_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the
thesaurus.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_thesaurus_:_Name">Name</code></td>
<td><p>[required] A name for the thesaurus.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_thesaurus_:_Description">Description</code></td>
<td><p>A description for the thesaurus.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_thesaurus_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role with
permission to access your S3 bucket that contains the thesaurus file.
For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_thesaurus_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs that identify or categorize the
thesaurus. You can also use tags to help control access to the
thesaurus. Tag keys and values can consist of Unicode letters, digits,
white space, and any of the following symbols: _ . : / = + - @.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_thesaurus_:_SourceS3Path">SourceS3Path</code></td>
<td><p>[required] The path to the thesaurus file in S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_thesaurus_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create a
thesaurus. Multiple calls to the <code>create_thesaurus</code> API with
the same client token will create only one thesaurus.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_thesaurus(
      IndexId = "string",
      Name = "string",
      Description = "string",
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SourceS3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      ClientToken = "string"
    )
