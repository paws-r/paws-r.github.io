<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_list_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists applications based on a set of parameters

### Description

Lists applications based on a set of parameters.

### Usage

    emrserverless_list_applications(nextToken, maxResults, states)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_list_applications_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of application results.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_list_applications_:_maxResults">maxResults</code></td>
<td><p>The maximum number of applications that can be listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_list_applications_:_states">states</code></td>
<td><p>An optional filter for application states. Note that if this
filter contains multiple states, the resulting list will be grouped by
the state.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applications = list(
        list(
          id = "string",
          name = "string",
          arn = "string",
          releaseLabel = "string",
          type = "string",
          state = "CREATING"|"CREATED"|"STARTING"|"STARTED"|"STOPPING"|"STOPPED"|"TERMINATED",
          stateDetails = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          ),
          architecture = "ARM64"|"X86_64"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_applications(
      nextToken = "string",
      maxResults = 123,
      states = list(
        "CREATING"|"CREATED"|"STARTING"|"STARTED"|"STOPPING"|"STOPPED"|"TERMINATED"
      )
    )
