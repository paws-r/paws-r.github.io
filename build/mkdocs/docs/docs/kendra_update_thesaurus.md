<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_thesaurus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a thesaurus for an index

### Description

Updates a thesaurus for an index.

### Usage

    kendra_update_thesaurus(Id, Name, IndexId, Description, RoleArn,
      SourceS3Path)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_update_thesaurus_:_Id">Id</code></td>
<td><p>[required] The identifier of the thesaurus you want to
update.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_update_thesaurus_:_Name">Name</code></td>
<td><p>A new name for the thesaurus.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_update_thesaurus_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the
thesaurus.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_thesaurus_:_Description">Description</code></td>
<td><p>A new description for the thesaurus.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_update_thesaurus_:_RoleArn">RoleArn</code></td>
<td><p>An IAM role that gives Amazon Kendra permissions to access
thesaurus file specified in <code>SourceS3Path</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_thesaurus_:_SourceS3Path">SourceS3Path</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_thesaurus(
      Id = "string",
      Name = "string",
      IndexId = "string",
      Description = "string",
      RoleArn = "string",
      SourceS3Path = list(
        Bucket = "string",
        Key = "string"
      )
    )
