<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_programmatic_access_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Request programmatic credentials to use with FinSpace SDK

### Description

Request programmatic credentials to use with FinSpace SDK.

### Usage

    finspacedata_get_programmatic_access_credentials(durationInMinutes,
      environmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_programmatic_access_credentials_:_durationInMinutes">durationInMinutes</code></td>
<td><p>The time duration in which the credentials remain valid.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_get_programmatic_access_credentials_:_environmentId">environmentId</code></td>
<td><p>[required] The FinSpace environment identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      credentials = list(
        accessKeyId = "string",
        secretAccessKey = "string",
        sessionToken = "string"
      ),
      durationInMinutes = 123
    )

### Request syntax

    svc$get_programmatic_access_credentials(
      durationInMinutes = 123,
      environmentId = "string"
    )
