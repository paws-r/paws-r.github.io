<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the session

### Description

Retrieves the session.

### Usage

    glue_get_session(Id, RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_session_:_Id">Id</code></td>
<td><p>[required] The ID of the session.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_session_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The origin of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Session = list(
        Id = "string",
        CreatedOn = as.POSIXct(
          "2015-01-01"
        ),
        Status = "PROVISIONING"|"READY"|"FAILED"|"TIMEOUT"|"STOPPING"|"STOPPED",
        ErrorMessage = "string",
        Description = "string",
        Role = "string",
        Command = list(
          Name = "string",
          PythonVersion = "string"
        ),
        DefaultArguments = list(
          "string"
        ),
        Connections = list(
          Connections = list(
            "string"
          )
        ),
        Progress = 123.0,
        MaxCapacity = 123.0,
        SecurityConfiguration = "string",
        GlueVersion = "string"
      )
    )

### Request syntax

    svc$get_session(
      Id = "string",
      RequestOrigin = "string"
    )
