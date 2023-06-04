<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_app_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an app block

### Description

Creates an app block.

App blocks are an Amazon AppStream 2.0 resource that stores the details
about the virtual hard disk in an S3 bucket. It also stores the setup
script with details about how to mount the virtual hard disk. The
virtual hard disk includes the application binaries and other files
necessary to launch your applications. Multiple applications can be
assigned to a single app block.

This is only supported for Elastic fleets.

### Usage

    appstream_create_app_block(Name, Description, DisplayName,
      SourceS3Location, SetupScriptDetails, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_create_app_block_:_Name">Name</code></td>
<td><p>[required] The name of the app block.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_app_block_:_Description">Description</code></td>
<td><p>The description of the app block.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_app_block_:_DisplayName">DisplayName</code></td>
<td><p>The display name of the app block. This is not displayed to the
user.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_app_block_:_SourceS3Location">SourceS3Location</code></td>
<td><p>[required] The source S3 location of the app block.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_app_block_:_SetupScriptDetails">SetupScriptDetails</code></td>
<td><p>[required] The setup script details of the app block.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_create_app_block_:_Tags">Tags</code></td>
<td><p>The tags assigned to the app block.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AppBlock = list(
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
    )

### Request syntax

    svc$create_app_block(
      Name = "string",
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
      Tags = list(
        "string"
      )
    )
