<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_update_application_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified application version to have the specified properties

### Description

Updates the specified application version to have the specified
properties.

If a property (for example, `description`) is not provided, the value
remains unchanged. To clear properties, specify an empty string.

### Usage

    elasticbeanstalk_update_application_version(ApplicationName,
      VersionLabel, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_application_version_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application associated with this
version.</p>
<p>If no application is found with this name,
<code>update_application</code> returns an
<code>InvalidParameterValue</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_application_version_:_VersionLabel">VersionLabel</code></td>
<td><p>[required] The name of the version to update.</p>
<p>If no application version is found with this label,
<code>update_application</code> returns an
<code>InvalidParameterValue</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_application_version_:_Description">Description</code></td>
<td><p>A new description for this version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationVersion = list(
        ApplicationVersionArn = "string",
        ApplicationName = "string",
        Description = "string",
        VersionLabel = "string",
        SourceBuildInformation = list(
          SourceType = "Git"|"Zip",
          SourceRepository = "CodeCommit"|"S3",
          SourceLocation = "string"
        ),
        BuildArn = "string",
        SourceBundle = list(
          S3Bucket = "string",
          S3Key = "string"
        ),
        DateCreated = as.POSIXct(
          "2015-01-01"
        ),
        DateUpdated = as.POSIXct(
          "2015-01-01"
        ),
        Status = "Processed"|"Unprocessed"|"Failed"|"Processing"|"Building"
      )
    )

### Request syntax

    svc$update_application_version(
      ApplicationName = "string",
      VersionLabel = "string",
      Description = "string"
    )

### Examples

    ## Not run: 
    # The following operation updates the description of an application
    # version named 22a0-stage-150819_185942:
    svc$update_application_version(
      ApplicationName = "my-app",
      Description = "new description",
      VersionLabel = "22a0-stage-150819_185942"
    )

    ## End(Not run)
