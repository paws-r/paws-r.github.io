<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of sessions

### Description

Retrieve a list of sessions.

### Usage

    glue_list_sessions(NextToken, MaxResults, Tags, RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_sessions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more result.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_sessions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_sessions_:_Tags">Tags</code></td>
<td><p>Tags belonging to the session.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_sessions_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The origin of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Ids = list(
        "string"
      ),
      Sessions = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_sessions(
      NextToken = "string",
      MaxResults = 123,
      Tags = list(
        "string"
      ),
      RequestOrigin = "string"
    )
