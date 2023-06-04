<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_thesaurus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an existing Amazon Kendra thesaurus

### Description

Gets information about an existing Amazon Kendra thesaurus.

### Usage

    kendra_describe_thesaurus(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_describe_thesaurus_:_Id">Id</code></td>
<td><p>[required] The identifier of the thesaurus you want to get
information on.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_describe_thesaurus_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the
thesaurus.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      IndexId = "string",
      Name = "string",
      Description = "string",
      Status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"ACTIVE_BUT_UPDATE_FAILED"|"FAILED",
      ErrorMessage = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      RoleArn = "string",
      SourceS3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      FileSizeBytes = 123,
      TermCount = 123,
      SynonymRuleCount = 123
    )

### Request syntax

    svc$describe_thesaurus(
      Id = "string",
      IndexId = "string"
    )
