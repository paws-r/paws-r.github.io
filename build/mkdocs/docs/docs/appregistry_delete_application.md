<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an application that is specified either by its application ID, name, or ARN

### Description

Deletes an application that is specified either by its application ID,
name, or ARN. All associated attribute groups and resources must be
disassociated from it before deleting an application.

### Usage

    appregistry_delete_application(application)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_delete_application_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      application = list(
        id = "string",
        arn = "string",
        name = "string",
        description = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_application(
      application = "string"
    )
