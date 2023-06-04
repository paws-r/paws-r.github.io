<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_create_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application

### Description

Creates an application.

### Usage

    pinpoint_create_app(CreateApplicationRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_create_app_:_CreateApplicationRequest">CreateApplicationRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationResponse = list(
        Arn = "string",
        Id = "string",
        Name = "string",
        tags = list(
          "string"
        ),
        CreationDate = "string"
      )
    )

### Request syntax

    svc$create_app(
      CreateApplicationRequest = list(
        Name = "string",
        tags = list(
          "string"
        )
      )
    )
