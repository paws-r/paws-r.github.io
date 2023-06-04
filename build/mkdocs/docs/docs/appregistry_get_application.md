<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_get_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves metadata information about one of your applications

### Description

Retrieves metadata information about one of your applications. The
application can be specified by its ARN, ID, or name (which is unique
within one account in one region at a given point in time). Specify by
ARN or ID in automated workflows if you want to make sure that the exact
same application is returned or a `ResourceNotFoundException` is thrown,
avoiding the ABA addressing problem.

### Usage

    appregistry_get_application(application)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_get_application_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      arn = "string",
      name = "string",
      description = "string",
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdateTime = as.POSIXct(
        "2015-01-01"
      ),
      associatedResourceCount = 123,
      tags = list(
        "string"
      ),
      integrations = list(
        resourceGroup = list(
          state = "CREATING"|"CREATE_COMPLETE"|"CREATE_FAILED"|"UPDATING"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
          arn = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$get_application(
      application = "string"
    )
