<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_create_web_login_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a web login token for the Airflow Web UI

### Description

Creates a web login token for the Airflow Web UI. To learn more, see
[Creating an Apache Airflow web login
token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html).

### Usage

    mwaa_create_web_login_token(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_create_web_login_token_:_Name">Name</code></td>
<td><p>[required] The name of the Amazon MWAA environment. For example,
<code>MyMWAAEnvironment</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WebServerHostname = "string",
      WebToken = "string"
    )

### Request syntax

    svc$create_web_login_token(
      Name = "string"
    )
