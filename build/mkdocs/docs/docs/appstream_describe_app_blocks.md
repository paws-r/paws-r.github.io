<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_app_blocks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more app blocks

### Description

Retrieves a list that describes one or more app blocks.

### Usage

    appstream_describe_app_blocks(Arns, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_describe_app_blocks_:_Arns">Arns</code></td>
<td><p>The ARNs of the app blocks.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_app_blocks_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_app_blocks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppBlocks = list(
        list(
          Name = "string",
          Arn = "string",
          Description = "string",
          DisplayName = "string",
          SourceS3Location = list(
            S3Bucket = "string",
            S3Key = "string"
          ),
          SetupScriptDetails = list(
            ScriptS3Location = list(
              S3Bucket = "string",
              S3Key = "string"
            ),
            ExecutablePath = "string",
            ExecutableParameters = "string",
            TimeoutInSeconds = 123
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_app_blocks(
      Arns = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
