<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_get_associated_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the resource associated with the application

### Description

Gets the resource associated with the application.

### Usage

    appregistry_get_associated_resource(application, resourceType, resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_get_associated_resource_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_get_associated_resource_:_resourceType">resourceType</code></td>
<td><p>[required] The type of resource associated with the
application.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_get_associated_resource_:_resource">resource</code></td>
<td><p>[required] The name or ID of the resource associated with the
application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resource = list(
        name = "string",
        arn = "string",
        associationTime = as.POSIXct(
          "2015-01-01"
        ),
        integrations = list(
          resourceGroup = list(
            state = "CREATING"|"CREATE_COMPLETE"|"CREATE_FAILED"|"UPDATING"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
            arn = "string",
            errorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_associated_resource(
      application = "string",
      resourceType = "CFN_STACK"|"RESOURCE_TAG_VALUE",
      resource = "string"
    )
