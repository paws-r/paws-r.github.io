<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_update_application_resource_lifecycle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies lifecycle settings for an application

### Description

Modifies lifecycle settings for an application.

### Usage

    elasticbeanstalk_update_application_resource_lifecycle(ApplicationName,
      ResourceLifecycleConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_application_resource_lifecycle_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_application_resource_lifecycle_:_ResourceLifecycleConfig">ResourceLifecycleConfig</code></td>
<td><p>[required] The lifecycle configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationName = "string",
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

### Request syntax

    svc$update_application_resource_lifecycle(
      ApplicationName = "string",
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
