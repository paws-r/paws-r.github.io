<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application that has one configuration template named default and no application versions

### Description

Creates an application that has one configuration template named
`default` and no application versions.

### Usage

    elasticbeanstalk_create_application(ApplicationName, Description,
      ResourceLifecycleConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application. Must be unique within
your account.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_application_:_Description">Description</code></td>
<td><p>Your description of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_create_application_:_ResourceLifecycleConfig">ResourceLifecycleConfig</code></td>
<td><p>Specifies an application resource lifecycle configuration to
prevent your application from accumulating too many versions.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_create_application_:_Tags">Tags</code></td>
<td><p>Specifies the tags applied to the application.</p>
<p>Elastic Beanstalk applies these tags only to the application.
Environments that you create in the application don't inherit the
tags.</p></td>
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

    svc$create_application(
      ApplicationName = "string",
      Description = "string",
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
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation creates a new application named my-app:
    svc$create_application(
      ApplicationName = "my-app",
      Description = "my application"
    )

    ## End(Not run)
