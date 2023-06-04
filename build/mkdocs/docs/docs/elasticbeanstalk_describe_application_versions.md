<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_application_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of application versions

### Description

Retrieve a list of application versions.

### Usage

    elasticbeanstalk_describe_application_versions(ApplicationName,
      VersionLabels, MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_application_versions_:_ApplicationName">ApplicationName</code></td>
<td><p>Specify an application name to show only application versions for
that application.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_application_versions_:_VersionLabels">VersionLabels</code></td>
<td><p>Specify a version label to show a specific application
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_application_versions_:_MaxRecords">MaxRecords</code></td>
<td><p>For a paginated request. Specify a maximum number of application
versions to include in each response.</p>
<p>If no <code>MaxRecords</code> is specified, all available application
versions are retrieved in a single response.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_application_versions_:_NextToken">NextToken</code></td>
<td><p>For a paginated request. Specify a token from a previous response
page to retrieve the next response page. All other parameter values must
be identical to the ones specified in the initial request.</p>
<p>If no <code>NextToken</code> is specified, the first page is
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationVersions = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_application_versions(
      ApplicationName = "string",
      VersionLabels = list(
        "string"
      ),
      MaxRecords = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following operation retrieves information about an application
    # version labeled v2:
    svc$describe_application_versions(
      ApplicationName = "my-app",
      VersionLabels = list(
        "v2"
      )
    )

    ## End(Not run)
