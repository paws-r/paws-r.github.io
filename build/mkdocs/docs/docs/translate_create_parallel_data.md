<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_create_parallel_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3

### Description

Creates a parallel data resource in Amazon Translate by importing an
input file from Amazon S3. Parallel data files contain examples that
show how you want segments of text to be translated. By adding parallel
data, you can influence the style, tone, and word choice in your
translation output.

### Usage

    translate_create_parallel_data(Name, Description, ParallelDataConfig,
      EncryptionKey, ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_create_parallel_data_:_Name">Name</code></td>
<td><p>[required] A custom name for the parallel data resource in Amazon
Translate. You must assign a name that is unique in the account and
region.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_create_parallel_data_:_Description">Description</code></td>
<td><p>A custom description for the parallel data resource in Amazon
Translate.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_create_parallel_data_:_ParallelDataConfig">ParallelDataConfig</code></td>
<td><p>[required] Specifies the format and S3 location of the parallel
data input file.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_create_parallel_data_:_EncryptionKey">EncryptionKey</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="translate_create_parallel_data_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. This token is
automatically generated when you use Amazon Translate through an AWS
SDK.</p></td>
</tr>
<tr class="even">
<td><code id="translate_create_parallel_data_:_Tags">Tags</code></td>
<td><p>Tags to be associated with this resource. A tag is a key-value
pair that adds metadata to a resource. Each tag key for the resource
must be unique. For more information, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">Tagging
your resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED"
    )

### Request syntax

    svc$create_parallel_data(
      Name = "string",
      Description = "string",
      ParallelDataConfig = list(
        S3Uri = "string",
        Format = "TSV"|"CSV"|"TMX"
      ),
      EncryptionKey = list(
        Type = "KMS",
        Id = "string"
      ),
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
