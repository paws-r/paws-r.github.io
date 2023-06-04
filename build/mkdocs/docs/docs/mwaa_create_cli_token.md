<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_create_cli_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a CLI token for the Airflow CLI

### Description

Creates a CLI token for the Airflow CLI. To learn more, see [Creating an
Apache Airflow CLI
token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html).

### Usage

    mwaa_create_cli_token(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_create_cli_token_:_Name">Name</code></td>
<td><p>[required] The name of the Amazon MWAA environment. For example,
<code>MyMWAAEnvironment</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CliToken = "string",
      WebServerHostname = "string"
    )

### Request syntax

    svc$create_cli_token(
      Name = "string"
    )
