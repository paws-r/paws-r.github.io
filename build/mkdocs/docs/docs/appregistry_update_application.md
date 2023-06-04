<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing application with new attributes

### Description

Updates an existing application with new attributes.

### Usage

    appregistry_update_application(application, name, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_update_application_:_application">application</code></td>
<td><p>[required] The name, ID, or ARN of the application that will be
updated.</p></td>
</tr>
<tr class="even">
<td><code id="appregistry_update_application_:_name">name</code></td>
<td><p>Deprecated: The new name of the application. The name must be
unique in the region in which you are updating the application. Please
do not use this field as we have stopped supporting name
updates.</p></td>
</tr>
<tr class="odd">
<td><code
id="appregistry_update_application_:_description">description</code></td>
<td><p>The new description of the application.</p></td>
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
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$update_application(
      application = "string",
      name = "string",
      description = "string"
    )
