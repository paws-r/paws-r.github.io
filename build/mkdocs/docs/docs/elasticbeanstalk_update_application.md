<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified application to have the specified properties

### Description

Updates the specified application to have the specified properties.

If a property (for example, `description`) is not provided, the value
remains unchanged. To clear these properties, specify an empty string.

### Usage

    elasticbeanstalk_update_application(ApplicationName, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to update. If no such
application is found, <code>update_application</code> returns an
<code>InvalidParameterValue</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_application_:_Description">Description</code></td>
<td><p>A new description for the application.</p>
<p>Default: If not specified, AWS Elastic Beanstalk does not update the
description.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Application = list(
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

### Request syntax

    svc$update_application(
      ApplicationName = "string",
      Description = "string"
    )

### Examples

    ## Not run: 
    # The following operation updates the description of an application named
    # my-app:
    svc$update_application(
      ApplicationName = "my-app",
      Description = "my Elastic Beanstalk application"
    )

    ## End(Not run)
