<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_delete_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Managed Workflows for Apache Airflow (MWAA) environment

### Description

Deletes an Amazon Managed Workflows for Apache Airflow (MWAA)
environment.

### Usage

    mwaa_delete_environment(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_delete_environment_:_Name">Name</code></td>
<td><p>[required] The name of the Amazon MWAA environment. For example,
<code>MyMWAAEnvironment</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_environment(
      Name = "string"
    )
