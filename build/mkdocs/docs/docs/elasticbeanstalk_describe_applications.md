<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the descriptions of existing applications

### Description

Returns the descriptions of existing applications.

### Usage

    elasticbeanstalk_describe_applications(ApplicationNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_applications_:_ApplicationNames">ApplicationNames</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to only include those with the specified names.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Applications = list(
        list(
          ApplicationArn = "string",
          ApplicationName = "string",
          Description = "string",
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateUpdated = as.POSIXct(
            "2015-01-01"
          ),
          Versions = list(
            "string"
          ),
          ConfigurationTemplates = list(
            "string"
          ),
          ResourceLifecycleConfig = list(
            ServiceRole = "string",
            VersionLifecycleConfig = list(
              MaxCountRule = list(
                Enabled = TRUE|FALSE,
                MaxCount = 123,
                DeleteSourceFromS3 = TRUE|FALSE
              ),
              MaxAgeRule = list(
                Enabled = TRUE|FALSE,
                MaxAgeInDays = 123,
                DeleteSourceFromS3 = TRUE|FALSE
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_applications(
      ApplicationNames = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following operation retrieves information about applications in the
    # current region:
    svc$describe_applications()

    ## End(Not run)
