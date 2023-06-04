<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_create_application_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application version for the specified application

### Description

Creates an application version for the specified application. You can
create an application version from a source bundle in Amazon S3, a
commit in AWS CodeCommit, or the output of an AWS CodeBuild build as
follows:

Specify a commit in an AWS CodeCommit repository with
`SourceBuildInformation`.

Specify a build in an AWS CodeBuild with `SourceBuildInformation` and
`BuildConfiguration`.

Specify a source bundle in S3 with `SourceBundle`

Omit both `SourceBuildInformation` and `SourceBundle` to use the default
sample application.

After you create an application version with a specified Amazon S3
bucket and key location, you can't change that Amazon S3 location. If
you change the Amazon S3 location, you receive an exception when you
attempt to launch an environment from the application version.

### Usage

    elasticbeanstalk_create_application_version(ApplicationName,
      VersionLabel, Description, SourceBuildInformation, SourceBundle,
      BuildConfiguration, AutoCreateApplication, Process, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_version_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application. If no application is
found with this name, and <code>AutoCreateApplication</code> is
<code>false</code>, returns an <code>InvalidParameterValue</code>
error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_application_version_:_VersionLabel">VersionLabel</code></td>
<td><p>[required] A label identifying this version.</p>
<p>Constraint: Must be unique per application. If an application version
already exists with this label for the specified application, AWS
Elastic Beanstalk returns an <code>InvalidParameterValue</code>
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_version_:_Description">Description</code></td>
<td><p>A description of this application version.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_application_version_:_SourceBuildInformation">SourceBuildInformation</code></td>
<td><p>Specify a commit in an AWS CodeCommit Git repository to use as
the source code for the application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_version_:_SourceBundle">SourceBundle</code></td>
<td><p>The Amazon S3 bucket and key that identify the location of the
source bundle for this version.</p>
<p>The Amazon S3 bucket must be in the same region as the
environment.</p>
<p>Specify a source bundle in S3 or a commit in an AWS CodeCommit
repository (with <code>SourceBuildInformation</code>), but not both. If
neither <code>SourceBundle</code> nor
<code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses
a sample application.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_application_version_:_BuildConfiguration">BuildConfiguration</code></td>
<td><p>Settings for an AWS CodeBuild build.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_version_:_AutoCreateApplication">AutoCreateApplication</code></td>
<td><p>Set to <code>true</code> to create an application with the
specified name if it doesn't already exist.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_application_version_:_Process">Process</code></td>
<td><p>Pre-processes and validates the environment manifest
(<code>env.yaml</code>) and configuration files (<code
style="white-space: pre;">⁠*.config⁠</code> files in the
<code>.ebextensions</code> folder) in the source bundle. Validating
configuration files can identify issues prior to deploying the
application version to an environment.</p>
<p>You must turn processing on for application versions that you create
using AWS CodeBuild or AWS CodeCommit. For application versions built
from a source bundle in Amazon S3, processing is optional.</p>
<p>The <code>Process</code> option validates Elastic Beanstalk
configuration files. It doesn't validate your application's
configuration files, like proxy server or Docker configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_version_:_Tags">Tags</code></td>
<td><p>Specifies the tags applied to the application version.</p>
<p>Elastic Beanstalk applies these tags only to the application version.
Environments that use the application version don't inherit the
tags.</p></td>
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

    svc$create_application_version(
      ApplicationName = "string",
      VersionLabel = "string",
      Description = "string",
      SourceBuildInformation = list(
        SourceType = "Git"|"Zip",
        SourceRepository = "CodeCommit"|"S3",
        SourceLocation = "string"
      ),
      SourceBundle = list(
        S3Bucket = "string",
        S3Key = "string"
      ),
      BuildConfiguration = list(
        ArtifactName = "string",
        CodeBuildServiceRole = "string",
        ComputeType = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE",
        Image = "string",
        TimeoutInMinutes = 123
      ),
      AutoCreateApplication = TRUE|FALSE,
      Process = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation creates a new version (v1) of an application
    # named my-app:
    svc$create_application_version(
      ApplicationName = "my-app",
      AutoCreateApplication = TRUE,
      Description = "my-app-v1",
      Process = TRUE,
      SourceBundle = list(
        S3Bucket = "my-bucket",
        S3Key = "sample.war"
      ),
      VersionLabel = "v1"
    )

    ## End(Not run)
