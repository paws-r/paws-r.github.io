<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_faq</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an FAQ list

### Description

Gets information about an FAQ list.

### Usage

    kendra_describe_faq(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_describe_faq_:_Id">Id</code></td>
<td><p>[required] The identifier of the FAQ you want to get information
on.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_describe_faq_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the FAQ.</p></td>
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
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      S3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED",
      RoleArn = "string",
      ErrorMessage = "string",
      FileFormat = "CSV"|"CSV_WITH_HEADER"|"JSON",
      LanguageCode = "string"
    )

### Request syntax

    svc$describe_faq(
      Id = "string",
      IndexId = "string"
    )
