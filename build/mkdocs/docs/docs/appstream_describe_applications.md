<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more applications

### Description

Retrieves a list that describes one or more applications.

### Usage

    appstream_describe_applications(Arns, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_describe_applications_:_Arns">Arns</code></td>
<td><p>The ARNs for the applications.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_applications_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_applications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Applications = list(
        list(
          Name = "string",
          DisplayName = "string",
          IconURL = "string",
          LaunchPath = "string",
          LaunchParameters = "string",
          Enabled = TRUE|FALSE,
          Metadata = list(
            "string"
          ),
          WorkingDirectory = "string",
          Description = "string",
          Arn = "string",
          AppBlockArn = "string",
          IconS3Location = list(
            S3Bucket = "string",
            S3Key = "string"
          ),
          Platforms = list(
            "WINDOWS"|"WINDOWS_SERVER_2016"|"WINDOWS_SERVER_2019"|"AMAZON_LINUX2"
          ),
          InstanceFamilies = list(
            "string"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_applications(
      Arns = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
