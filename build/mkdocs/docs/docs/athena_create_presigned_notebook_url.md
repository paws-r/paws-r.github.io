<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_create_presigned_notebook_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an authentication token and the URL at which the notebook can be accessed

### Description

Gets an authentication token and the URL at which the notebook can be
accessed. During programmatic access, `create_presigned_notebook_url`
must be called every 10 minutes to refresh the authentication token. For
information about granting programmatic access, see [Grant programmatic
access](https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access).

### Usage

    athena_create_presigned_notebook_url(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_create_presigned_notebook_url_:_SessionId">SessionId</code></td>
<td><p>[required] The session ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookUrl = "string",
      AuthToken = "string",
      AuthTokenExpirationTime = 123
    )

### Request syntax

    svc$create_presigned_notebook_url(
      SessionId = "string"
    )
