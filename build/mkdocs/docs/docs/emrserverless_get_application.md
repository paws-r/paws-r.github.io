<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_get_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays detailed information about a specified application

### Description

Displays detailed information about a specified application.

### Usage

    emrserverless_get_application(applicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_get_application_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application that will be
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      application = list(
        applicationId = "string",
        name = "string",
        arn = "string",
        releaseLabel = "string",
        type = "string",
        state = "CREATING"|"CREATED"|"STARTING"|"STARTED"|"STOPPING"|"STOPPED"|"TERMINATED",
        stateDetails = "string",
        initialCapacity = list(
          list(
            workerCount = 123,
            workerConfiguration = list(
              cpu = "string",
              memory = "string",
              disk = "string"
            )
          )
        ),
        maximumCapacity = list(
          cpu = "string",
          memory = "string",
          disk = "string"
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          "string"
        ),
        autoStartConfiguration = list(
          enabled = TRUE|FALSE
        ),
        autoStopConfiguration = list(
          enabled = TRUE|FALSE,
          idleTimeoutMinutes = 123
        ),
        networkConfiguration = list(
          subnetIds = list(
            "string"
          ),
          securityGroupIds = list(
            "string"
          )
        ),
        architecture = "ARM64"|"X86_64",
        imageConfiguration = list(
          imageUri = "string",
          resolvedImageDigest = "string"
        ),
        workerTypeSpecifications = list(
          list(
            imageConfiguration = list(
              imageUri = "string",
              resolvedImageDigest = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_application(
      applicationId = "string"
    )
